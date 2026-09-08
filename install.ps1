$ErrorActionPreference = "Stop"

$SourceRoot = Split-Path -Parent $MyInvocation.MyCommand.Path
$HomeDir = $HOME
$CodexDir = Join-Path $HomeDir ".codex"
$SkillsDir = Join-Path $HomeDir ".agents\skills"
$Timestamp = Get-Date -Format "yyyyMMdd-HHmmss"
$BackupDir = Join-Path $HomeDir ".codex-engineering-backups\$Timestamp"

New-Item -ItemType Directory -Force $CodexDir | Out-Null
New-Item -ItemType Directory -Force $SkillsDir | Out-Null
New-Item -ItemType Directory -Force $BackupDir | Out-Null

$ExistingAgents = Join-Path $CodexDir "AGENTS.md"
if (Test-Path $ExistingAgents) {
    Copy-Item $ExistingAgents (Join-Path $BackupDir "AGENTS.md")
    Write-Host "Backed up existing AGENTS.md to $BackupDir"
}

$SourceAgents = Join-Path $SourceRoot ".codex\AGENTS.md"
Copy-Item $SourceAgents $ExistingAgents -Force

$SourceSkills = Join-Path $SourceRoot ".agents\skills"
Get-ChildItem $SourceSkills -Directory | ForEach-Object {
    $dest = Join-Path $SkillsDir $_.Name
    if (Test-Path $dest) {
        $skillBackupRoot = Join-Path $BackupDir "skills"
        New-Item -ItemType Directory -Force $skillBackupRoot | Out-Null
        Copy-Item $dest (Join-Path $skillBackupRoot $_.Name) -Recurse
        Remove-Item $dest -Recurse -Force
    }
    Copy-Item $_.FullName $dest -Recurse
}

Write-Host ""
Write-Host "Installed global AGENTS.md:"
Write-Host "  $ExistingAgents"
Write-Host ""
Write-Host "Installed Skills:"
Write-Host "  $SkillsDir"
Write-Host ""
Write-Host "Backup location:"
Write-Host "  $BackupDir"
Write-Host ""
Write-Host "Installation complete."
