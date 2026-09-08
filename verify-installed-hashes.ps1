$ErrorActionPreference="Stop"
$PackageRoot=$PSScriptRoot
$Manifest=Get-Content (Join-Path $PackageRoot "manifest.json") -Raw | ConvertFrom-Json
$Hashes=Get-Content (Join-Path $PackageRoot "package-hashes.json") -Raw | ConvertFrom-Json
$Failed=$false

function CompareOne([string]$Rel,[string]$Installed) {
  $Expected=$Hashes.sha256.$Rel
  if (-not $Expected) { Write-Host "WARN no hash $Rel"; return }
  if (-not (Test-Path $Installed)) { Write-Host "FAIL missing $Installed"; $script:Failed=$true; return }
  $Actual=(Get-FileHash $Installed -Algorithm SHA256).Hash.ToLower()
  if ($Actual -ne $Expected.ToLower()) { Write-Host "FAIL changed $Installed"; $script:Failed=$true }
}

CompareOne ".codex/AGENTS.md" "$HOME\.codex\AGENTS.md"
foreach($Skill in $Manifest.skills) {
  CompareOne ".agents/skills/$Skill/SKILL.md" "$HOME\.agents\skills\$Skill\SKILL.md"
}
if($Failed){ Write-Error "Installed files differ from V3 package."; exit 1 }
Write-Host "Installed AGENTS.md and all $($Manifest.expected_skill_count) SKILL.md files match V3."
