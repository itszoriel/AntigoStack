$ErrorActionPreference="Stop"
$Manifest = Get-Content (Join-Path $PSScriptRoot "manifest.json") -Raw | ConvertFrom-Json
$Failed=$false
$Count=0

Write-Host "Codex Engineering System V3 verification"
Write-Host ""

if (Test-Path "$HOME\.codex\AGENTS.md") {
  Write-Host "PASS global AGENTS.md"
} else {
  Write-Host "FAIL missing global AGENTS.md"
  $Failed=$true
}

foreach ($Skill in $Manifest.skills) {
  $Path="$HOME\.agents\skills\$Skill\SKILL.md"
  if (-not (Test-Path $Path)) {
    Write-Host "FAIL missing: $Skill"
    $Failed=$true
    continue
  }
  $Text=Get-Content $Path -Raw
  $Pattern="(?m)^name:\s*"+[regex]::Escape($Skill)+"\s*$"
  if ($Text -notmatch "^---" -or $Text -notmatch $Pattern -or $Text -notmatch "(?m)^description:\s*.+$") {
    Write-Host "FAIL invalid SKILL.md: $Skill"
    $Failed=$true
  } else {
    $Count++
  }
}

Write-Host ""
Write-Host "Expected: $($Manifest.expected_skill_count)"
Write-Host "Verified: $Count"

if ($Failed -or $Count -ne $Manifest.expected_skill_count) {
  Write-Error "V3 verification failed."
  exit 1
}
Write-Host "Static verification passed."
