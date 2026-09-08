[CmdletBinding(SupportsShouldProcess = $true)]
param([string]$SourceRoot = $PSScriptRoot)

$ErrorActionPreference = "Stop"
$GlobalSource = Join-Path $SourceRoot ".codex\AGENTS.md"
$SkillsSource = Join-Path $SourceRoot ".agents\skills"
$ManifestSource = Join-Path $SourceRoot "manifest.json"
$GuideSource = Join-Path $SourceRoot "AGENTS_AND_SKILLS_GUIDE_V3.md"

foreach ($p in @($GlobalSource,$SkillsSource,$ManifestSource)) {
    if (-not (Test-Path $p)) { throw "Missing package component: $p" }
}

$Manifest = Get-Content $ManifestSource -Raw | ConvertFrom-Json
$Stamp = Get-Date -Format "yyyyMMdd-HHmmss"
$BackupRoot = Join-Path $HOME ".codex-engineering-backups\v3-$Stamp"

Write-Host ""
Write-Host "Codex Engineering System $($Manifest.version)"
Write-Host "Skills in package: $($Manifest.expected_skill_count)"
Write-Host "Backup: $BackupRoot"
Write-Host ""

if (-not $WhatIfPreference) {
    New-Item -ItemType Directory -Force $BackupRoot | Out-Null
    if (Test-Path "$HOME\.codex\AGENTS.md") {
        New-Item -ItemType Directory -Force "$BackupRoot\.codex" | Out-Null
        Copy-Item "$HOME\.codex\AGENTS.md" "$BackupRoot\.codex\AGENTS.md" -Force
    }
    if (Test-Path "$HOME\.agents\skills") {
        New-Item -ItemType Directory -Force "$BackupRoot\.agents" | Out-Null
        Copy-Item "$HOME\.agents\skills" "$BackupRoot\.agents\skills" -Recurse
    }
    @{backup_created=(Get-Date).ToString("o");source_version=$Manifest.version} |
      ConvertTo-Json | Set-Content (Join-Path $BackupRoot "backup-info.json") -Encoding UTF8
}

New-Item -ItemType Directory -Force "$HOME\.codex" | Out-Null
New-Item -ItemType Directory -Force "$HOME\.agents\skills" | Out-Null
New-Item -ItemType Directory -Force "$HOME\.codex-engineering-system" | Out-Null

if ($PSCmdlet.ShouldProcess("$HOME\.codex\AGENTS.md","Install V3 global AGENTS.md")) {
    Copy-Item $GlobalSource "$HOME\.codex\AGENTS.md" -Force
}

foreach ($SkillName in $Manifest.skills) {
    $Source = Join-Path $SkillsSource $SkillName
    $Destination = Join-Path "$HOME\.agents\skills" $SkillName
    if ($PSCmdlet.ShouldProcess($Destination,"Install/update managed Skill $SkillName")) {
        if (Test-Path $Destination) { Remove-Item $Destination -Recurse -Force }
        Copy-Item $Source $Destination -Recurse
    }
}

if ($PSCmdlet.ShouldProcess("$HOME\.codex-engineering-system","Install V3 metadata/guide")) {
    Copy-Item $ManifestSource "$HOME\.codex-engineering-system\manifest.json" -Force
    if (Test-Path $GuideSource) {
        Copy-Item $GuideSource "$HOME\.codex-engineering-system\AGENTS_AND_SKILLS_GUIDE_V3.md" -Force
    }
}

Write-Host ""
if ($WhatIfPreference) {
    Write-Host "Preview complete. No managed files were installed."
} else {
    Write-Host "Update complete."
    Write-Host "AGENTS: $HOME\.codex\AGENTS.md"
    Write-Host "Skills: $HOME\.agents\skills"
    Write-Host "Backup: $BackupRoot"
    Write-Host "Next: .\verify-install.ps1"
}
