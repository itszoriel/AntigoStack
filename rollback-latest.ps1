[CmdletBinding(SupportsShouldProcess=$true)]
param()
$ErrorActionPreference="Stop"
$Base="$HOME\.codex-engineering-backups"
$Latest=Get-ChildItem $Base -Directory -ErrorAction Stop |
  Where-Object {$_.Name -like "v3-*"} |
  Sort-Object Name -Descending |
  Select-Object -First 1
if(-not $Latest){ throw "No V3 backup found." }
Write-Host "Latest V3 backup: $($Latest.FullName)"
$A=Join-Path $Latest.FullName ".codex\AGENTS.md"
$S=Join-Path $Latest.FullName ".agents\skills"
if(Test-Path $A){
  if($PSCmdlet.ShouldProcess("$HOME\.codex\AGENTS.md","Restore previous AGENTS.md")){
    New-Item -ItemType Directory -Force "$HOME\.codex"|Out-Null
    Copy-Item $A "$HOME\.codex\AGENTS.md" -Force
  }
}
if(Test-Path $S){
  if($PSCmdlet.ShouldProcess("$HOME\.agents\skills","Restore previous Skills tree")){
    if(Test-Path "$HOME\.agents\skills"){Remove-Item "$HOME\.agents\skills" -Recurse -Force}
    New-Item -ItemType Directory -Force "$HOME\.agents"|Out-Null
    Copy-Item $S "$HOME\.agents\skills" -Recurse
  }
}
Write-Host "Rollback complete/previewed."
