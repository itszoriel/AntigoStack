[CmdletBinding(SupportsShouldProcess = $true)]
param()

$ErrorActionPreference = "Stop"

$Root = Split-Path -Parent $PSScriptRoot
$OutputPath = Join-Path $Root "package-hashes.json"
$Manifest = Get-Content (Join-Path $Root "manifest.json") -Raw | ConvertFrom-Json
$Hashes = [ordered]@{}

function Get-RepositoryHash([string]$Path) {
    $TextExtensions = @(".md", ".ps1", ".json", ".yml", ".yaml", ".txt")
    $File = Get-Item $Path
    $IsText = $File.Extension.ToLowerInvariant() -in $TextExtensions -or
        $File.Name -in @(".gitattributes", ".gitignore")

    if (-not $IsText) {
        return (Get-FileHash $Path -Algorithm SHA256).Hash.ToLowerInvariant()
    }

    $Text = [System.IO.File]::ReadAllText($Path)
    $Normalized = $Text.Replace("`r`n", "`n").Replace("`r", "`n")
    $Utf8WithoutBom = New-Object System.Text.UTF8Encoding($false)
    $Bytes = $Utf8WithoutBom.GetBytes($Normalized)
    $Sha256 = [System.Security.Cryptography.SHA256]::Create()
    try {
        return -join ($Sha256.ComputeHash($Bytes) | ForEach-Object { $_.ToString("x2") })
    }
    finally {
        $Sha256.Dispose()
    }
}

$Files = Get-ChildItem $Root -Recurse -Force -File | Where-Object {
    $relative = $_.FullName.Substring($Root.Length + 1).Replace("\", "/")
    $relative -ne "package-hashes.json" -and
    $relative -ne "CodexForge_Public_GitHub_Preparation_Prompt.md" -and
    -not $relative.StartsWith(".git/")
} | Sort-Object FullName

foreach ($File in $Files) {
    $RelativePath = $File.FullName.Substring($Root.Length + 1).Replace("\", "/")
    $Hashes[$RelativePath] = Get-RepositoryHash $File.FullName
}

$Payload = [ordered]@{
    algorithm = "sha256"
    text_normalization = "utf-8-lf"
    version = [string]$Manifest.version
    files = $Hashes
}

$Json = $Payload | ConvertTo-Json -Depth 5
$Utf8WithoutBom = New-Object System.Text.UTF8Encoding($false)

if ($PSCmdlet.ShouldProcess($OutputPath, "Write SHA-256 repository inventory")) {
    [System.IO.File]::WriteAllText($OutputPath, $Json + [Environment]::NewLine, $Utf8WithoutBom)
    Write-Host "Wrote $($Hashes.Count) SHA-256 entries to $OutputPath"
}
