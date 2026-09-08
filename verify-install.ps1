Write-Host "Global AGENTS.md:"
$agents = Join-Path $HOME ".codex\AGENTS.md"
if (Test-Path $agents) { Write-Host "  FOUND: $agents" } else { Write-Host "  MISSING" }

Write-Host ""
Write-Host "Skills:"
$skills = Join-Path $HOME ".agents\skills"
if (Test-Path $skills) {
    Get-ChildItem $skills -Directory | Sort-Object Name | ForEach-Object { Write-Host "  - $($_.Name)" }
} else {
    Write-Host "  MISSING"
}
