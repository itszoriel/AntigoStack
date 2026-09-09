[CmdletBinding(SupportsShouldProcess=$true)]
param()

$ErrorActionPreference = "Stop"
$SourceRoot = $PSScriptRoot
$Manifest = Get-Content (Join-Path $SourceRoot "manifest.json") -Raw | ConvertFrom-Json
$PackData = Get-Content (Join-Path $SourceRoot "packs\packs.json") -Raw | ConvertFrom-Json

$ActiveRoot = "$HOME\.agents\skills"
$CodexRoot = "$HOME\.codex"
$InstallRoot = "$HOME\.codex-engineering-system\v4.1"
$BackupRoot = "$HOME\.codex-engineering-backups\v4.1-$(Get-Date -Format yyyyMMdd-HHmmss)"

Write-Host ""
Write-Host "Codex Engineering System V4.1"
Write-Host "Full library: $($Manifest.total_library_skills) Skills"
Write-Host "Default active: $($Manifest.default_active_skills) Skills"
Write-Host "Backup: $BackupRoot"
Write-Host ""

if (-not $WhatIfPreference) {
    New-Item -ItemType Directory -Force $BackupRoot | Out-Null

    if (Test-Path "$CodexRoot\AGENTS.md") {
        New-Item -ItemType Directory -Force "$BackupRoot\.codex" | Out-Null
        Copy-Item "$CodexRoot\AGENTS.md" "$BackupRoot\.codex\AGENTS.md" -Force
    }

    if (Test-Path $ActiveRoot) {
        New-Item -ItemType Directory -Force "$BackupRoot\.agents" | Out-Null
        Copy-Item $ActiveRoot "$BackupRoot\.agents\skills" -Recurse
    }

    @{
        backup_created = (Get-Date).ToString("o")
        from_version = "previous"
        to_version = "4.1.0"
    } | ConvertTo-Json | Set-Content (Join-Path $BackupRoot "backup-info.json") -Encoding UTF8
}

if ($PSCmdlet.ShouldProcess($InstallRoot,"Install V4.1 library and pack metadata")) {
    if (Test-Path $InstallRoot) { Remove-Item $InstallRoot -Recurse -Force }
    New-Item -ItemType Directory -Force $InstallRoot | Out-Null
    Copy-Item (Join-Path $SourceRoot "skill-library") $InstallRoot -Recurse
    Copy-Item (Join-Path $SourceRoot "packs") $InstallRoot -Recurse
    Copy-Item (Join-Path $SourceRoot "manifest.json") $InstallRoot -Force
    Copy-Item (Join-Path $SourceRoot "codex-pack.ps1") $InstallRoot -Force
    Copy-Item (Join-Path $SourceRoot "V4.1_GUIDE.md") $InstallRoot -Force
    @{version="4.1.0";enabled_packs=@();updated=(Get-Date).ToString("o")} |
      ConvertTo-Json | Set-Content (Join-Path $InstallRoot "state.json") -Encoding UTF8
}

New-Item -ItemType Directory -Force $CodexRoot | Out-Null
New-Item -ItemType Directory -Force $ActiveRoot | Out-Null

if ($PSCmdlet.ShouldProcess("$CodexRoot\AGENTS.md","Install V4.1 global AGENTS.md")) {
    Copy-Item (Join-Path $SourceRoot ".codex\AGENTS.md") "$CodexRoot\AGENTS.md" -Force
}

# Remove only skills managed by V4.1/V4/V3 so unrelated custom user skills are preserved.
if ($PSCmdlet.ShouldProcess($ActiveRoot,"Replace V4.1-managed active Skills with compact core")) {
    foreach($skill in $Manifest.skills) {
        $dest = Join-Path $ActiveRoot $skill
        if (Test-Path $dest) { Remove-Item $dest -Recurse -Force }
    }
    foreach($skill in $PackData.core) {
        Copy-Item (Join-Path $SourceRoot ".agents\skills\$skill") (Join-Path $ActiveRoot $skill) -Recurse
    }
}

Write-Host ""
if ($WhatIfPreference) {
    Write-Host "Preview complete. No V4.1-managed files were installed."
} else {
    Write-Host "V4.1 installed."
    Write-Host "Active core:  $ActiveRoot"
    Write-Host "Full library: $InstallRoot\skill-library\skills"
    Write-Host "Pack manager: $InstallRoot\codex-pack.ps1"
    Write-Host "Backup:       $BackupRoot"
    Write-Host ""
    Write-Host "Next:"
    Write-Host "  .\verify-install.ps1"
    Write-Host "  .\verify-active-budget.ps1"
    Write-Host ""
    Write-Host "Restart Codex after verification."
}
