$ErrorActionPreference="Stop"
$Hashes=Get-Content (Join-Path $PSScriptRoot "package-hashes.json") -Raw|ConvertFrom-Json
$Manifest=Get-Content (Join-Path $PSScriptRoot "manifest.json") -Raw|ConvertFrom-Json
$Failed=$false
function Check([string]$Rel,[string]$Installed){$Expected=$Hashes.sha256.$Rel;if(-not(Test-Path $Installed)){Write-Host "  FAIL missing: $Installed";$script:Failed=$true;return};$Actual=(Get-FileHash $Installed -Algorithm SHA256).Hash.ToLower();if($Actual -ne $Expected.ToLower()){Write-Host "  FAIL changed: $Installed";$script:Failed=$true}else{Write-Host "  PASS: $Installed"}}
Check ".codex/AGENTS.md" "$HOME\.codex\AGENTS.md"
foreach($Skill in $Manifest.skills){Check ".agents/skills/$Skill/SKILL.md" "$HOME\.agents\skills\$Skill\SKILL.md"}
if($Failed){Write-Error "Installed V2 files differ from this package.";exit 1};Write-Host "Installed AGENTS.md and all 76 SKILL.md files match this package.";exit 0
