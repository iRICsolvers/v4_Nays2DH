[CmdletBinding()]
param(
  [string] $OutputPath
)

# 他のソルバーリポジトリへ展開するための署名キット（zip）を作成する。
# zipはリポジトリ直下の構成のまま格納するので、展開先リポジトリのルートで
# 展開すれば tools/release/ が追加され、.github/workflows/build.yml が差し替わる。

$ErrorActionPreference = 'Stop'

$repoRoot = (Resolve-Path (Join-Path $PSScriptRoot '..\..')).Path
if (-not $OutputPath) {
  $OutputPath = Join-Path $repoRoot 'dist\solver-signing-kit.zip'
}

$kitFiles = @(
  '.github/workflows/build.yml',
  'tools/release/README.md',
  'tools/release/sign-install.ps1',
  'tools/release/sign_binary.py',
  'tools/release/verify-signature.ps1',
  'tools/release/package-signing-kit.ps1'
)

foreach ($relativePath in $kitFiles) {
  $sourcePath = Join-Path $repoRoot $relativePath
  if (-not (Test-Path -LiteralPath $sourcePath -PathType Leaf)) {
    throw "キットに含めるファイルが見つかりません: $relativePath"
  }
}

# どのリポジトリ・コミットから作ったキットかを記録する
$commit = $null
$origin = $null
$dirty = $null
try {
  $commit = (& git -C $repoRoot rev-parse HEAD 2>$null)
  $origin = (& git -C $repoRoot remote get-url origin 2>$null)
  $dirty = [bool] (& git -C $repoRoot status --porcelain -- $kitFiles 2>$null)
} catch {
}
if ($dirty) {
  Write-Warning 'キットのファイルに未コミットの変更があります。signing-kit.jsonのsourceCommitと中身が一致しません。'
}
$manifest = [ordered]@{
  createdAt = (Get-Date).ToString('yyyy-MM-ddTHH:mm:ssK')
  sourceRepository = $origin
  sourceCommit = $commit
  sourceDirty = $dirty
  files = @(
    foreach ($relativePath in $kitFiles) {
      [ordered]@{
        path = $relativePath
        sha256 = (Get-FileHash -LiteralPath (Join-Path $repoRoot $relativePath) -Algorithm SHA256).Hash
      }
    }
  )
}

$outputDirectory = Split-Path -Parent $OutputPath
if ($outputDirectory) {
  New-Item -ItemType Directory -Force -Path $outputDirectory | Out-Null
}
$OutputPath = [System.IO.Path]::GetFullPath($OutputPath)
if (Test-Path -LiteralPath $OutputPath) {
  Remove-Item -LiteralPath $OutputPath -Force
}

# Compress-Archiveは環境によってエントリ名が\区切りになるため、/区切りで明示的に格納する
Add-Type -AssemblyName System.IO.Compression
Add-Type -AssemblyName System.IO.Compression.FileSystem
$zip = [System.IO.Compression.ZipFile]::Open($OutputPath, [System.IO.Compression.ZipArchiveMode]::Create)
try {
  foreach ($relativePath in $kitFiles) {
    [System.IO.Compression.ZipFileExtensions]::CreateEntryFromFile(
      $zip, (Join-Path $repoRoot $relativePath), $relativePath) | Out-Null
  }
  $manifestEntry = $zip.CreateEntry('tools/release/signing-kit.json')
  $writer = New-Object System.IO.StreamWriter($manifestEntry.Open(), (New-Object System.Text.UTF8Encoding($false)))
  try {
    $writer.Write(($manifest | ConvertTo-Json -Depth 4))
  } finally {
    $writer.Dispose()
  }
} finally {
  $zip.Dispose()
}

Write-Host "署名キットを作成しました: $OutputPath"
foreach ($relativePath in $kitFiles + 'tools/release/signing-kit.json') {
  Write-Host "  $relativePath"
}
