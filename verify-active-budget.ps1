$ErrorActionPreference="Stop"
$SkillsRoot="$HOME\.agents\skills"

if(-not (Test-Path $SkillsRoot)){ throw "Missing active skills directory: $SkillsRoot" }

$items=@()
$total=0

foreach($dir in Get-ChildItem $SkillsRoot -Directory){
    $skill=Join-Path $dir.FullName "SKILL.md"
    if(-not (Test-Path $skill)){ continue }
    $text=Get-Content $skill -Raw
    $nameMatch=[regex]::Match($text,'(?m)^name:\s*(.+)$')
    $descMatch=[regex]::Match($text,'(?m)^description:\s*(.+)$')
    $name=if($nameMatch.Success){$nameMatch.Groups[1].Value.Trim()}else{$dir.Name}
    $desc=if($descMatch.Success){$descMatch.Groups[1].Value.Trim()}else{""}
    $path=$skill
    # Approximate Codex initial-list footprint: name + description + path + separators.
    $chars=$name.Length+$desc.Length+$path.Length+12
    $total+=$chars
    $items += [pscustomobject]@{Name=$name;ApproxChars=$chars}
}

Write-Host "Active Skills: $($items.Count)"
Write-Host "Approx initial skill-list characters: $total"
Write-Host "Reference fallback budget when context size is unknown: 8000 characters"
Write-Host ""

if($total -gt 8000){
    Write-Warning "Approximate active Skill metadata exceeds 8000 characters. Disable packs or reset to core."
}else{
    Write-Host "PASS: approximate active Skill metadata is below 8000 characters."
}

$items | Sort-Object ApproxChars -Descending | Select-Object -First 10 | Format-Table -AutoSize
