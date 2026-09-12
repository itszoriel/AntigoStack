[CmdletBinding(SupportsShouldProcess = $true)]
param()

$ErrorActionPreference = "Stop"

$SourceRoot = $PSScriptRoot
$ManifestPath = Join-Path $SourceRoot "manifest.json"
$PacksPath = Join-Path $SourceRoot "packs\packs.json"

$Manifest = Get-Content $ManifestPath -Raw | ConvertFrom-Json
$PackData = Get-Content $PacksPath -Raw | ConvertFrom-Json

$ActiveRoot = Join-Path $HOME ".agents\skills"
$CodexRoot = Join-Path $HOME ".codex"
$InstallRoot = Join-Path $HOME ".codex-engineering-system\v5"
$BackupRoot = Join-Path $HOME (".codex-engineering-backups\v5-{0}" -f (Get-Date -Format "yyyyMMdd-HHmmss"))

Write-Host ""
Write-Host "CodexForge V5.0.1 - Professional Engineering Intelligence"
Write-Host "Full library: $($Manifest.total_library_skills) Skills"
Write-Host "Default active: $($Manifest.default_active_skills) Skills"
Write-Host "Backup: $BackupRoot"
Write-Host ""

# Backups are created only during a real install. -WhatIf must remain side-effect free.
if (-not $WhatIfPreference) {
    New-Item -ItemType Directory -Force -Path $BackupRoot | Out-Null

    $CurrentAgents = Join-Path $CodexRoot "AGENTS.md"
    if (Test-Path $CurrentAgents) {
        $BackupCodexRoot = Join-Path $BackupRoot ".codex"
        New-Item -ItemType Directory -Force -Path $BackupCodexRoot | Out-Null
        Copy-Item -Path $CurrentAgents -Destination (Join-Path $BackupCodexRoot "AGENTS.md") -Force
    }

    if (Test-Path $ActiveRoot) {
        $BackupAgentsRoot = Join-Path $BackupRoot ".agents"
        New-Item -ItemType Directory -Force -Path $BackupAgentsRoot | Out-Null
        Copy-Item -Path $ActiveRoot -Destination (Join-Path $BackupAgentsRoot "skills") -Recurse
    }

    @{
        backup_created = (Get-Date).ToString("o")
        from_version = "previous"
        to_version = "5.0.1"
    } | ConvertTo-Json | Set-Content -Path (Join-Path $BackupRoot "backup-info.json") -Encoding UTF8
}

if ($PSCmdlet.ShouldProcess($InstallRoot, "Install V5 library, shared references, and pack metadata")) {
    if (Test-Path $InstallRoot) {
        Remove-Item -Path $InstallRoot -Recurse -Force
    }

    New-Item -ItemType Directory -Force -Path $InstallRoot | Out-Null

    Copy-Item -Path (Join-Path $SourceRoot "skill-library") -Destination $InstallRoot -Recurse
    Copy-Item -Path (Join-Path $SourceRoot "packs") -Destination $InstallRoot -Recurse
    Copy-Item -Path (Join-Path $SourceRoot "manifest.json") -Destination $InstallRoot -Force
    Copy-Item -Path (Join-Path $SourceRoot "codex-pack.ps1") -Destination $InstallRoot -Force
    Copy-Item -Path (Join-Path $SourceRoot "V5_GUIDE.md") -Destination $InstallRoot -Force

    @{
        version = "5.0.1"
        enabled_packs = @()
        updated = (Get-Date).ToString("o")
    } | ConvertTo-Json | Set-Content -Path (Join-Path $InstallRoot "state.json") -Encoding UTF8
}

$GlobalAgents = Join-Path $CodexRoot "AGENTS.md"
if ($PSCmdlet.ShouldProcess($GlobalAgents, "Install V5 global AGENTS.md")) {
    New-Item -ItemType Directory -Force -Path $CodexRoot | Out-Null
    Copy-Item -Path (Join-Path $SourceRoot ".codex\AGENTS.md") -Destination $GlobalAgents -Force
}

if ($PSCmdlet.ShouldProcess($ActiveRoot, "Replace V5-managed active Skills with compact Core")) {
    New-Item -ItemType Directory -Force -Path $ActiveRoot | Out-Null

    foreach ($skill in $Manifest.skills) {
        $Destination = Join-Path $ActiveRoot $skill
        if (Test-Path $Destination) {
            Remove-Item -Path $Destination -Recurse -Force
        }
    }

    foreach ($skill in $PackData.core) {
        $Source = Join-Path $SourceRoot (".agents\skills\{0}" -f $skill)
        $Destination = Join-Path $ActiveRoot $skill
        Copy-Item -Path $Source -Destination $Destination -Recurse
    }
}

Write-Host ""
if ($WhatIfPreference) {
    Write-Host "Preview complete. No V5-managed files were installed."
}
else {
    Write-Host "V5.0.1 installed."
    Write-Host "Active core:  $ActiveRoot"
    Write-Host "Full library: $(Join-Path $InstallRoot 'skill-library\skills')"
    Write-Host "Pack manager: $(Join-Path $InstallRoot 'codex-pack.ps1')"
    Write-Host "Backup:       $BackupRoot"
    Write-Host ""
    Write-Host "Next:"
    Write-Host "  .\verify-install.ps1"
    Write-Host "  .\verify-active-budget.ps1"
    Write-Host ""
    Write-Host "Restart Codex after verification."
}
