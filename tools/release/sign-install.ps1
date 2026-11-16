[CmdletBinding()]
param(
  # 署名するソルバーのinstallフォルダ（build.ymlではsolver\install）
  [Parameter(Mandatory = $true)]
  [string] $InstallDir,

  # 判定結果・検証レポートの出力先。online_update_v4やinstallの外を指定する
  [Parameter(Mandatory = $true)]
  [string] $ReportDir,

  [string] $ExpectedSignerThumbprint,

  [string[]] $SignExtensions = @('.exe', '.dll'),

  # 署名せず、署名対象の判定だけを行う
  [switch] $DryRun
)

# installフォルダ内の未署名の.exe/.dllに署名し、検証する。
# - NotSigned               : 署名する
# - Valid（自組織の証明書） : 署名済みとして再署名しない
# - Valid（第三者の証明書） : Intelランタイムなどの再頒布物として再署名しない
# - それ以外                : 改ざん・破損の可能性があるためエラー
# 署名はCIの作業コピーに対して行い、リポジトリへは書き戻さない。

$ErrorActionPreference = 'Stop'

$signScript = Join-Path $PSScriptRoot 'sign_binary.py'
$verifyScript = Join-Path $PSScriptRoot 'verify-signature.ps1'

if (-not (Test-Path -LiteralPath $InstallDir -PathType Container)) {
  throw "installフォルダが見つかりません: $InstallDir"
}
$installPath = (Get-Item -LiteralPath $InstallDir).FullName

if (-not $ExpectedSignerThumbprint) {
  $ExpectedSignerThumbprint = $env:AZURE_EXPECTED_SIGNER_THUMBPRINT
}
$expectedThumbprint = ''
if ($ExpectedSignerThumbprint) {
  $expectedThumbprint = ($ExpectedSignerThumbprint -replace '\s', '').ToUpperInvariant()
} else {
  Write-Warning 'AZURE_EXPECTED_SIGNER_THUMBPRINTが未設定のため、署名済みファイルはすべて第三者署名として扱い、署名者の照合も行いません。'
}

$extensions = @($SignExtensions | ForEach-Object { $_.ToLowerInvariant() })
$files = @(
  Get-ChildItem -LiteralPath $installPath -Recurse -File |
    Where-Object { $_.Extension.ToLowerInvariant() -in $extensions } |
    Sort-Object -Property FullName
)
if ($files.Count -eq 0) {
  throw "署名対象の拡張子（$($extensions -join ', ')）のファイルがありません: $installPath"
}

# --- 署名対象の判定 --------------------------------------------------------

$signTargets = @()
$ownSigned = @()
$thirdPartySigned = @()
$entries = @()

foreach ($file in $files) {
  $signature = Get-AuthenticodeSignature -LiteralPath $file.FullName
  $status = [string] $signature.Status
  $signerSubject = $null
  $signerThumbprint = ''
  if ($null -ne $signature.SignerCertificate) {
    $signerSubject = $signature.SignerCertificate.Subject
    $signerThumbprint = $signature.SignerCertificate.Thumbprint.ToUpperInvariant()
  }

  switch ($status) {
    'NotSigned' {
      $action = 'sign'
      $signTargets += $file.FullName
    }
    'Valid' {
      if ($expectedThumbprint -and $signerThumbprint -eq $expectedThumbprint) {
        $action = 'keep-own-signature'
        $ownSigned += $file.FullName
      } else {
        $action = 'keep-third-party-signature'
        $thirdPartySigned += $file.FullName
      }
    }
    default {
      throw "署名状態が不正なファイルがあります（$status）: $($file.FullName)"
    }
  }

  $entries += [PSCustomObject][ordered]@{
    RelativePath    = [System.IO.Path]::GetRelativePath($installPath, $file.FullName)
    SHA256          = (Get-FileHash -LiteralPath $file.FullName -Algorithm SHA256).Hash
    SignatureStatus = $status
    SignerSubject   = $signerSubject
    Action          = $action
  }
}

New-Item -ItemType Directory -Force -Path $ReportDir | Out-Null
ConvertTo-Json -InputObject @($entries) -Depth 4 | Set-Content -LiteralPath (Join-Path $ReportDir 'sign-targets.json') -Encoding utf8

foreach ($entry in $entries) {
  Write-Host ("  {0,-28} {1}" -f $entry.Action, $entry.RelativePath)
}
Write-Host "署名対象: $($signTargets.Count) 件 / 自組織署名済み: $($ownSigned.Count) 件 / 第三者署名済み: $($thirdPartySigned.Count) 件"

# --- 署名 ------------------------------------------------------------------

if ($signTargets.Count -gt 0) {
  $signArgs = @($signScript)
  if ($DryRun) {
    $signArgs += '--dry-run'
  }
  & python @signArgs @signTargets
  if ($LASTEXITCODE -ne 0) {
    throw "署名に失敗しました。終了コード: $LASTEXITCODE"
  }
}

if ($DryRun) {
  Write-Host 'ドライランのため検証は行いません。'
  return
}

# --- 検証 ------------------------------------------------------------------

$ourFiles = @($signTargets + $ownSigned)
if ($ourFiles.Count -gt 0) {
  & $verifyScript -Path $ourFiles `
    -ReportPath (Join-Path $ReportDir 'signature-report.json') `
    -ExpectedSignerThumbprint $expectedThumbprint
}

if ($thirdPartySigned.Count -gt 0) {
  # verify-signature.ps1は引数が空だと環境変数の期待値を使うため、
  # 第三者署名の検証中だけ環境変数を外して署名者の照合を行わない
  $savedThumbprint = $env:AZURE_EXPECTED_SIGNER_THUMBPRINT
  try {
    Remove-Item Env:AZURE_EXPECTED_SIGNER_THUMBPRINT -ErrorAction SilentlyContinue
    & $verifyScript -Path $thirdPartySigned `
      -ReportPath (Join-Path $ReportDir 'third-party-signature-report.json')
  } finally {
    if ($null -ne $savedThumbprint) {
      $env:AZURE_EXPECTED_SIGNER_THUMBPRINT = $savedThumbprint
    }
  }
}

Write-Host '署名と検証が完了しました。'
