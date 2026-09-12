[CmdletBinding(SupportsShouldProcess=$true)]
param()
$ErrorActionPreference="Stop";$Base="$HOME\.codex-engineering-backups"
$Latest=Get-ChildItem $Base -Directory|Where-Object{$_.Name -like "v5-*"}|Sort-Object Name -Descending|Select-Object -First 1
if(-not $Latest){throw "No V5 backup found."}
Write-Host "Restoring: $($Latest.FullName)"
$Agents=Join-Path $Latest.FullName ".codex\AGENTS.md";$Skills=Join-Path $Latest.FullName ".agents\skills"
if(Test-Path $Agents){if($PSCmdlet.ShouldProcess("$HOME\.codex\AGENTS.md","Restore prior AGENTS.md")){New-Item -ItemType Directory -Force "$HOME\.codex"|Out-Null;Copy-Item $Agents "$HOME\.codex\AGENTS.md" -Force}}
if(Test-Path $Skills){if($PSCmdlet.ShouldProcess("$HOME\.agents\skills","Restore prior Skills")){if(Test-Path "$HOME\.agents\skills"){Remove-Item "$HOME\.agents\skills" -Recurse -Force};New-Item -ItemType Directory -Force "$HOME\.agents"|Out-Null;Copy-Item $Skills "$HOME\.agents\skills" -Recurse}}
Write-Host "Rollback complete/previewed."
