$ErrorActionPreference="Stop"
$SourceRoot=$PSScriptRoot
$Manifest=Get-Content(Join-Path $SourceRoot "manifest.json") -Raw|ConvertFrom-Json
$PackData=Get-Content(Join-Path $SourceRoot "packs\packs.json") -Raw|ConvertFrom-Json
$Failed=$false
Write-Host "V5 installation verification";Write-Host ""
if(Test-Path "$HOME\.codex\AGENTS.md"){Write-Host "PASS global AGENTS.md"}else{Write-Host "FAIL missing global AGENTS.md";$Failed=$true}
$Library="$HOME\.codex-engineering-system\v5\skill-library\skills";$libCount=0
foreach($skill in $Manifest.skills){$sp=Join-Path $Library "$skill\SKILL.md";$ep=Join-Path $Library "$skill\references\EXPERT_PLAYBOOK.md";if(Test-Path $sp){$libCount++}else{Write-Host "FAIL library missing: $skill";$Failed=$true};if(-not(Test-Path $ep)){Write-Host "FAIL expert playbook missing: $skill";$Failed=$true}}
$Active="$HOME\.agents\skills";$coreCount=0
foreach($skill in $PackData.core){if(Test-Path(Join-Path $Active "$skill\SKILL.md")){$coreCount++}else{Write-Host "FAIL active core missing: $skill";$Failed=$true}}
$shared="$HOME\.codex-engineering-system\v5\skill-library\shared-references\PROFESSIONAL_REASONING.md";if(Test-Path $shared){Write-Host "PASS shared professional references"}else{Write-Host "FAIL shared professional references";$Failed=$true}
Write-Host "";Write-Host "Library expected: $($Manifest.total_library_skills)";Write-Host "Library verified: $libCount";Write-Host "Core expected:    $($Manifest.default_active_skills)";Write-Host "Core verified:    $coreCount"
if($Failed -or $libCount -ne $Manifest.total_library_skills -or $coreCount -ne $Manifest.default_active_skills){Write-Error "V5 verification failed.";exit 1}
Write-Host "Static V5 verification passed."
