#!/usr/bin/env python3
"""Azure Key Vaultの証明書でWindows PEファイルに署名するツール。"""

from __future__ import annotations

import argparse
import os
import shutil
import subprocess
import sys
from pathlib import Path


DEFAULT_TIMESTAMP_URL = "http://timestamp.globalsign.com/tsa/advanced"
DEFAULT_DIGEST_ALGORITHM = "sha256"
AUTH_MODES = ("client-secret", "managed-identity")


class SigningConfigurationError(RuntimeError):
    """署名環境の設定に問題がある場合に発生する例外。"""


def configure_console_encoding() -> None:
    """Windows CIでも日本語のログをUTF-8で安全に出力する。"""
    for stream in (sys.stdout, sys.stderr):
        reconfigure = getattr(stream, "reconfigure", None)
        if reconfigure is not None:
            reconfigure(encoding="utf-8", errors="backslashreplace")


def required_environment_variable(name: str) -> str:
    value = os.environ.get(name)
    if not value:
        raise SigningConfigurationError(
            f"必須の環境変数が設定されていません: {name}"
        )
    return value


def parse_args() -> argparse.Namespace:
    default_auth_mode = os.environ.get("AZURE_SIGN_AUTH_MODE", "client-secret")
    if default_auth_mode not in AUTH_MODES:
        raise SigningConfigurationError(
            "AZURE_SIGN_AUTH_MODE は次のいずれかを指定してください: "
            + ", ".join(AUTH_MODES)
        )

    parser = argparse.ArgumentParser(
        description="AzureSignToolでWindows PEファイルに署名します。"
    )
    parser.add_argument(
        "--auth-mode",
        choices=AUTH_MODES,
        default=default_auth_mode,
        help=(
            "AzureSignToolの認証方式。Azure CLIまたはDefaultAzureCredentialでログイン済みの場合は "
            "managed-identity を使用します。"
        ),
    )
    parser.add_argument(
        "--timestamp-url",
        default=os.environ.get("AZURE_SIGN_TIMESTAMP_URL", DEFAULT_TIMESTAMP_URL),
        help="RFC 3161タイムスタンプサーバーのURL。",
    )
    parser.add_argument(
        "--digest-algorithm",
        choices=("sha256", "sha384", "sha512"),
        default=os.environ.get(
            "AZURE_SIGN_DIGEST_ALGORITHM", DEFAULT_DIGEST_ALGORITHM
        ),
        help="ファイル署名とタイムスタンプ署名に使用するダイジェストアルゴリズム。",
    )
    parser.add_argument(
        "--dry-run",
        action="store_true",
        help="署名せずに入力ファイルだけを検証して表示します。",
    )
    parser.add_argument("files", nargs="+", type=Path, help="署名対象のファイル。")
    return parser.parse_args()


def build_command(args: argparse.Namespace, files: list[Path]) -> list[str]:
    if shutil.which("AzureSignTool") is None:
        raise SigningConfigurationError(
            "AzureSignToolがPATH上に見つかりません。次のコマンドでインストールしてください: "
            "dotnet tool install --global AzureSignTool"
        )

    key_vault_url = required_environment_variable("AZURE_KEY_VAULT_URI")
    certificate_name = required_environment_variable("AZURE_CERT_NAME")

    command = [
        "AzureSignTool",
        "sign",
        "-kvu",
        key_vault_url,
        "-kvc",
        certificate_name,
        "-tr",
        args.timestamp_url,
        "-td",
        args.digest_algorithm,
        "-fd",
        args.digest_algorithm,
        "-v",
    ]

    if args.auth_mode == "client-secret":
        command.extend(
            [
                "-kvi",
                required_environment_variable("AZURE_CLIENT_ID"),
                "-kvt",
                required_environment_variable("AZURE_TENANT_ID"),
                "-kvs",
                required_environment_variable("AZURE_CLIENT_SECRET"),
            ]
        )
    else:
        # AzureSignTool's -kvm uses DefaultAzureCredential. This supports an
        # existing Azure CLI login, including one established by azure/login.
        command.append("-kvm")

    command.extend(str(path) for path in files)
    return command


def main() -> int:
    configure_console_encoding()
    try:
        args = parse_args()
        files = [path.expanduser() for path in args.files]
        missing_files = [path for path in files if not path.is_file()]
        if missing_files:
            missing = ", ".join(str(path) for path in missing_files)
            raise SigningConfigurationError(f"ファイルが見つかりません: {missing}")

        if args.dry_run:
            print(f"署名対象 {len(files)} 件（ドライラン）:")
            for path in files:
                print(f"  {path}")
            return 0

        command = build_command(args, files)
        print(f"AzureSignToolで {len(files)} 件のファイルに署名しています...")
        result = subprocess.run(command, check=False)
        return result.returncode
    except SigningConfigurationError as error:
        print(f"エラー: {error}", file=sys.stderr)
        return 2
    except FileNotFoundError:
        print(
            "エラー: AzureSignToolを起動できませんでした。"
            "インストール済みでPATH上にあるか確認してください。",
            file=sys.stderr,
        )
        return 2


if __name__ == "__main__":
    sys.exit(main())
