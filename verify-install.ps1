$ErrorActionPreference = "Stop"
$Manifest = Get-Content (Join-Path $PSScriptRoot "manifest.json") -Raw | ConvertFrom-Json
$Failed=$false; $Pass=0
Write-Host "Global AGENTS.md"
if (Test-Path "$HOME\.codex\AGENTS.md") { Write-Host "  PASS" } else { Write-Host "  FAIL missing"; $Failed=$true }
Write-Host "Skills"
foreach ($Skill in $Manifest.skills) {
  $Path=Join-Path "$HOME\.agents\skills" "$Skill\SKILL.md"
  if (-not (Test-Path $Path)) { Write-Host "  FAIL missing: $Skill"; $Failed=$true; continue }
  $Text=Get-Content $Path -Raw; $Pattern="(?m)^name:\s*"+[regex]::Escape($Skill)+"\s*$"
  if ($Text -notmatch "^---" -or $Text -notmatch $Pattern -or $Text -notmatch "(?m)^description:\s*.+$") { Write-Host "  FAIL frontmatter: $Skill"; $Failed=$true } else { Write-Host "  PASS: $Skill"; $Pass++ }
}
Write-Host "Expected: $($Manifest.expected_skill_count)"; Write-Host "Verified: $Pass"
$Installed=@(); if(Test-Path "$HOME\.agents\skills"){$Installed=Get-ChildItem "$HOME\.agents\skills" -Directory|Select-Object -ExpandProperty Name}
$Extras=$Installed|Where-Object{$_ -notin $Manifest.skills}; if($Extras){Write-Host "Additional Skills preserved:"; $Extras|ForEach-Object{Write-Host "  - $_"}}
if($Failed){Write-Error "Static verification failed."; exit 1}; Write-Host "Static verification passed."; exit 0
