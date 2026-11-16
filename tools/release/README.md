# ソルバー署名キット

`install/` にある `.exe` / `.dll` に、online_update_v4 へ配信する前に CI で Authenticode 署名を付けるための一式です。
ソルバー開発者は署名作業をする必要がありません。これまでどおり `install/` を更新して `main` に push してください。

## 仕組み

`.github/workflows/build.yml` の「Prepare data for dev / prod」より前で、`sign-install.ps1` が `install/` 内のファイルを判定し、次のように処理します。

| 署名状態 | 処理 |
|---|---|
| 未署名 | 署名する |
| 自組織の証明書で署名済み | 再署名しない（検証のみ） |
| 第三者の証明書で署名済み（Intel ランタイムなど） | 再署名しない（検証のみ） |
| 上記以外（改ざん・破損など） | エラーにして配信を止める |

- 署名するのは CI の作業コピーだけです。署名済みファイルはソルバーリポジトリにコミットされません。
- 署名済みの `install/` から dev_v4 / prod_v4 の両方にコピーされるので、署名は1回で両方に反映されます。
- `config.json` の `status` が `private` のときは配信しないので、署名も行いません。
- 判定結果と検証レポートは、Actions の artifact `signing-report` に保存されます。

## ファイル

| ファイル | 内容 |
|---|---|
| `.github/workflows/build.yml` | 既存の build.yml に署名ステップを追加したもの |
| `tools/release/sign-install.ps1` | 署名対象の判定、署名、検証 |
| `tools/release/sign_binary.py` | AzureSignTool の呼び出し（iRIC-UC / Cabernet2d と同一） |
| `tools/release/verify-signature.ps1` | 署名の検証（iRIC-UC / Cabernet2d と同一） |
| `tools/release/package-signing-kit.ps1` | このキットの zip を作成する |
| `tools/release/signing-kit.json` | zip に含まれる。作成元のリポジトリ・コミット、未コミット変更の有無（`sourceDirty`）、各ファイルの SHA-256 |

`sign_binary.py` と `verify-signature.ps1` は iRIC-UC の実装をそのまま使っています。直すときは両方を揃えてください。

## 必要な Secrets

| 名前 | 必須 | 内容 |
|---|---|---|
| `AZURE_KEY_VAULT_URI` | ○ | Key Vault の URI |
| `AZURE_CLIENT_ID` | ○ | 署名用アプリのクライアント ID |
| `AZURE_TENANT_ID` | ○ | テナント ID |
| `AZURE_CLIENT_SECRET` | ○ | クライアントシークレット |
| `AZURE_CERT_NAME` | ○ | Key Vault 上の証明書名 |
| `AZURE_EXPECTED_SIGNER_THUMBPRINT` | 推奨 | 署名者証明書の Thumbprint。未設定だと署名者の照合を行わない |
| `ONLINE_UPDATE_TOKEN` | ○ | 既存のもの。online_update_v4 への push 用 |

組織レベルの Secrets に登録しておけば、各リポジトリでの設定は不要です。

## 他のソルバーリポジトリへの展開

1. キットを作成します。

   ```powershell
   pwsh .\tools\release\package-signing-kit.ps1
   # => dist\solver-signing-kit.zip
   ```

2. 展開先リポジトリのルートで展開します。`tools/release/` が追加され、`.github/workflows/build.yml` が上書きされます。

   ```powershell
   Expand-Archive .\solver-signing-kit.zip -DestinationPath <展開先リポジトリ> -Force
   ```

3. 展開先の差分を確認します。iRICsolvers の各リポジトリの build.yml は `runs-on` 以外同じなので、通常は `runs-on` と署名ステップだけが差分になります。
   - キットの `runs-on` は `windows-latest` です。`windows-2019` は廃止済みなので、そのまま置き換えて構いません。
   - 展開先の build.yml に独自の変更がある場合は、上書きせずに署名ステップ（「Set up Python for signing」から「Upload signing report」まで）だけを移植してください。

4. 手元で署名対象を確認します（署名はしません）。

   ```powershell
   pwsh .\tools\release\sign-install.ps1 -InstallDir .\install -ReportDir $env:TEMP\signing-report -DryRun
   ```

## 注意

- 署名済みのファイルが既存ユーザーに届くのは、`definition.xml` の `version` を上げて配信したときだけです。オンラインアップデートは、バージョンが上がったパッケージしか更新しません。
- build.yml は `main` / `master` への push で動きます。作業ブランチへの push では配信されません。
