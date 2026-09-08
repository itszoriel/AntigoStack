[CmdletBinding(SupportsShouldProcess = $true)]
param([string]$SourceRoot = $PSScriptRoot)
$ErrorActionPreference = "Stop"
$GlobalSource = Join-Path $SourceRoot ".codex\AGENTS.md"
$SkillsSource = Join-Path $SourceRoot ".agents\skills"
$ManifestSource = Join-Path $SourceRoot "manifest.json"
$GuideSource = Join-Path $SourceRoot "AGENTS_AND_SKILLS_GUIDE_V2.md"
if (-not (Test-Path $GlobalSource)) { throw "Missing: $GlobalSource" }
if (-not (Test-Path $SkillsSource)) { throw "Missing: $SkillsSource" }
if (-not (Test-Path $ManifestSource)) { throw "Missing: $ManifestSource" }
$Manifest = Get-Content $ManifestSource -Raw | ConvertFrom-Json
$Stamp = Get-Date -Format "yyyyMMdd-HHmmss"
$BackupRoot = Join-Path $HOME ".codex-engineering-backups\v2-$Stamp"
Write-Host "Codex Engineering System V2"; Write-Host "Source: $SourceRoot"; Write-Host "Backup: $BackupRoot"; Write-Host "Skills: $($Manifest.expected_skill_count)"
if (-not $WhatIfPreference) {
  New-Item -ItemType Directory -Force $BackupRoot | Out-Null
  if (Test-Path "$HOME\.codex\AGENTS.md") { New-Item -ItemType Directory -Force "$BackupRoot\.codex" | Out-Null; Copy-Item "$HOME\.codex\AGENTS.md" "$BackupRoot\.codex\AGENTS.md" }
  if (Test-Path "$HOME\.agents\skills") { New-Item -ItemType Directory -Force "$BackupRoot\.agents" | Out-Null; Copy-Item "$HOME\.agents\skills" "$BackupRoot\.agents\skills" -Recurse }
}
New-Item -ItemType Directory -Force "$HOME\.codex" | Out-Null
New-Item -ItemType Directory -Force "$HOME\.agents\skills" | Out-Null
New-Item -ItemType Directory -Force "$HOME\.codex-engineering-system" | Out-Null
if ($PSCmdlet.ShouldProcess("$HOME\.codex\AGENTS.md", "Install V2 global AGENTS.md")) { Copy-Item $GlobalSource "$HOME\.codex\AGENTS.md" -Force }
foreach ($SkillName in $Manifest.skills) {
  $Source = Join-Path $SkillsSource $SkillName; $Destination = Join-Path "$HOME\.agents\skills" $SkillName
  if ($PSCmdlet.ShouldProcess($Destination, "Update managed Skill $SkillName")) { if (Test-Path $Destination) { Remove-Item $Destination -Recurse -Force }; Copy-Item $Source $Destination -Recurse }
}
if ($PSCmdlet.ShouldProcess("$HOME\.codex-engineering-system\manifest.json", "Install V2 metadata")) { Copy-Item $ManifestSource "$HOME\.codex-engineering-system\manifest.json" -Force; Copy-Item $GuideSource "$HOME\.codex-engineering-system\AGENTS_AND_SKILLS_GUIDE_V2.md" -Force }
if ($WhatIfPreference) { Write-Host "Preview complete. No V2-managed files were installed." } else { Write-Host "Update complete."; Write-Host "Backup: $BackupRoot"; Write-Host "Next: .\verify-install.ps1" }
