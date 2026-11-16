[CmdletBinding()]
param(
  [Parameter(Mandatory = $true)]
  [string[]] $Path,

  [Parameter(Mandatory = $true)]
  [string] $ReportPath,

  [string] $ExpectedSignerThumbprint
)

$ErrorActionPreference = 'Stop'

if (-not $ExpectedSignerThumbprint) {
  $ExpectedSignerThumbprint = $env:AZURE_EXPECTED_SIGNER_THUMBPRINT
}

$files = @()
foreach ($inputPath in $Path) {
  if (Test-Path -LiteralPath $inputPath -PathType Leaf) {
    $files += Get-Item -LiteralPath $inputPath
    continue
  }

  if (Test-Path -LiteralPath $inputPath -PathType Container) {
    $files += Get-ChildItem -LiteralPath $inputPath -Recurse -File |
      Where-Object { $_.Extension -in @('.exe', '.dll') }
    continue
  }

  throw "パスが見つかりません: $inputPath"
}

$files = @($files | Sort-Object -Property FullName -Unique)
if ($files.Count -eq 0) {
  throw '検証対象の.exeまたは.dllファイルが見つかりません。'
}

$expectedThumbprint = ''
if ($ExpectedSignerThumbprint) {
  $expectedThumbprint = (($ExpectedSignerThumbprint -replace '\s', '')).ToUpperInvariant()
  if ($expectedThumbprint -notmatch '^[0-9A-F]{40}$') {
    throw '期待する署名者証明書のThumbprintは40桁の16進数で指定してください。'
  }
}
$results = @()
$hasFailure = $false

foreach ($file in $files) {
  $signature = Get-AuthenticodeSignature -LiteralPath $file.FullName
  $signerSubject = $null
  $signerThumbprint = $null
  $timestampSubject = $null
  $timestampThumbprint = $null

  if ($null -ne $signature.SignerCertificate) {
    $signerSubject = $signature.SignerCertificate.Subject
    $signerThumbprint = $signature.SignerCertificate.Thumbprint
  }

  if ($null -ne $signature.TimeStamperCertificate) {
    $timestampSubject = $signature.TimeStamperCertificate.Subject
    $timestampThumbprint = $signature.TimeStamperCertificate.Thumbprint
  }

  $sha256 = (Get-FileHash -LiteralPath $file.FullName -Algorithm SHA256).Hash
  $failureReasons = @()

  if ($signature.Status -ne 'Valid') {
    $failureReasons += "署名ステータスが$($signature.Status)です"
  }

  if (-not $signerThumbprint) {
    $failureReasons += '署名者証明書がありません'
  }

  if (-not $timestampThumbprint) {
    $failureReasons += 'タイムスタンプ証明書がありません'
  }

  if ($expectedThumbprint) {
    $normalizedSignerThumbprint = ''
    if ($signerThumbprint) {
      $normalizedSignerThumbprint = (($signerThumbprint -replace '\s', '')).ToUpperInvariant()
    }
    if ($normalizedSignerThumbprint -ne $expectedThumbprint) {
      $failureReasons += '署名者証明書のThumbprintが期待値と一致しません'
    }
  }

  $valid = $failureReasons.Count -eq 0
  if (-not $valid) {
    $hasFailure = $true
  }

  $results += [PSCustomObject][ordered]@{
    File                  = $file.FullName
    Status                = [string]$signature.Status
    StatusMessage         = [string]$signature.StatusMessage
    SignerSubject         = $signerSubject
    SignerThumbprint      = $signerThumbprint
    TimestampSubject      = $timestampSubject
    TimestampThumbprint   = $timestampThumbprint
    SHA256                = $sha256
    Valid                 = $valid
    FailureReasons        = $failureReasons
  }

  $displayStatus = if ($valid) { '有効' } else { '無効' }
  Write-Host "$displayStatus $($file.FullName) [$($signature.Status)]"
}

$reportDirectory = Split-Path -Parent $ReportPath
if ($reportDirectory) {
  New-Item -ItemType Directory -Force -Path $reportDirectory | Out-Null
}
$results | ConvertTo-Json -Depth 5 | Set-Content -LiteralPath $ReportPath -Encoding utf8

if ($hasFailure) {
  throw "署名検証に失敗しました。レポートを確認してください: $ReportPath"
}
