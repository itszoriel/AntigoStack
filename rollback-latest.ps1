[CmdletBinding(SupportsShouldProcess = $true)] param()
$ErrorActionPreference="Stop"; $Base="$HOME\.codex-engineering-backups"
if(-not(Test-Path $Base)){throw "No backup directory found: $Base"}
$Latest=Get-ChildItem $Base -Directory|Where-Object{$_.Name -like "v2-*"}|Sort-Object Name -Descending|Select-Object -First 1
if(-not $Latest){throw "No V2 backup found."}; Write-Host "Latest backup: $($Latest.FullName)"
$A=Join-Path $Latest.FullName ".codex\AGENTS.md"; $S=Join-Path $Latest.FullName ".agents\skills"
if(Test-Path $A){if($PSCmdlet.ShouldProcess("$HOME\.codex\AGENTS.md","Restore prior AGENTS.md")){New-Item -ItemType Directory -Force "$HOME\.codex"|Out-Null;Copy-Item $A "$HOME\.codex\AGENTS.md" -Force}}
if(Test-Path $S){if($PSCmdlet.ShouldProcess("$HOME\.agents\skills","Restore prior Skills tree")){if(Test-Path "$HOME\.agents\skills"){Remove-Item "$HOME\.agents\skills" -Recurse -Force};New-Item -ItemType Directory -Force "$HOME\.agents"|Out-Null;Copy-Item $S "$HOME\.agents\skills" -Recurse}}
Write-Host "Rollback complete/previewed."
