$ErrorActionPreference = "Stop"
$Root = $PSScriptRoot
$Manifest = Get-Content (Join-Path $Root "manifest.json") -Raw | ConvertFrom-Json
$PackData = Get-Content (Join-Path $Root "packs\packs.json") -Raw | ConvertFrom-Json
$Library = Join-Path $Root "skill-library\skills"
$Core = Join-Path $Root ".agents\skills"
$Failed = $false

Write-Host "V5 source-package verification"
Write-Host ""

$dirs = @(Get-ChildItem $Library -Directory)
if($dirs.Count -ne $Manifest.total_library_skills){
    Write-Host "FAIL library directory count: expected $($Manifest.total_library_skills), found $($dirs.Count)"
    $Failed = $true
}else{ Write-Host "PASS library directory count: $($dirs.Count)" }

foreach($skill in $Manifest.skills){
    $skillDir = Join-Path $Library $skill
    foreach($rel in @("SKILL.md","references\EXPERT_PLAYBOOK.md","references\SOURCE_MAP_V5.md")){
        if(-not (Test-Path (Join-Path $skillDir $rel))){ Write-Host "FAIL $skill missing $rel"; $Failed = $true }
    }
}

$coreDirs = @(Get-ChildItem $Core -Directory)
if($coreDirs.Count -ne $Manifest.default_active_skills){
    Write-Host "FAIL bundled core count: expected $($Manifest.default_active_skills), found $($coreDirs.Count)"
    $Failed = $true
}else{ Write-Host "PASS bundled core count: $($coreDirs.Count)" }

foreach($skill in $PackData.core){
    if($skill -notin $Manifest.skills){ Write-Host "FAIL core references unknown Skill: $skill"; $Failed = $true }
}
foreach($packProp in $PackData.packs.PSObject.Properties){
    foreach($skill in @($packProp.Value)){
        if($skill -notin $Manifest.skills){ Write-Host "FAIL pack $($packProp.Name) references unknown Skill: $skill"; $Failed = $true }
    }
}
foreach($profileProp in $PackData.profiles.PSObject.Properties){
    foreach($pack in @($profileProp.Value)){
        if($null -eq $PackData.packs.PSObject.Properties[$pack]){ Write-Host "FAIL profile $($profileProp.Name) references unknown pack: $pack"; $Failed = $true }
    }
}

$stale = @()
Get-ChildItem $Root -Recurse -File -Include *.md,*.ps1,*.json | ForEach-Object {
    $t = Get-Content $_.FullName -Raw -ErrorAction SilentlyContinue
    if($t -match '\.codex-engineering-system[\\/]v4(?:[\\/]|\b)'){ $stale += $_.FullName }
}
if($stale.Count -gt 0){
    Write-Host "FAIL stale V4 routing paths found:"
    $stale | ForEach-Object { Write-Host "  $_" }
    $Failed = $true
}else{ Write-Host "PASS no stale V4 routing paths" }

$approx=0
foreach($skill in $PackData.core){
    $p=Join-Path $Core "$skill\SKILL.md"
    $text=Get-Content $p -Raw
    $name=[regex]::Match($text,'(?m)^name:\s*(.+)$').Groups[1].Value.Trim()
    $desc=[regex]::Match($text,'(?m)^description:\s*(.+)$').Groups[1].Value.Trim()
    $fakePath="$HOME\.agents\skills\$skill\SKILL.md"
    $approx += $name.Length + $desc.Length + $fakePath.Length + 12
}
Write-Host "Core metadata estimate: $approx characters"
if($approx -gt 8000){ Write-Host "FAIL approximate core metadata budget exceeds 8000"; $Failed=$true } else { Write-Host "PASS compact core metadata budget" }

if($Failed){ Write-Error "V5 source-package verification failed."; exit 1 }
Write-Host ""
Write-Host "Static V5 source-package verification passed."
