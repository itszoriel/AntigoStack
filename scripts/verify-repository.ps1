$ErrorActionPreference = "Stop"

$Root = Split-Path -Parent $PSScriptRoot
$Failures = New-Object System.Collections.Generic.List[string]

function Add-Failure([string]$Message) {
    $Failures.Add($Message)
    Write-Host "FAIL $Message"
}

function Get-RelativePath([string]$Path) {
    return $Path.Substring($Root.Length + 1).Replace("\", "/")
}

function Get-RepositoryHash([string]$Path) {
    $TextExtensions = @(".md", ".ps1", ".json", ".yml", ".yaml", ".txt")
    $File = Get-Item $Path
    $IsText = $File.Extension.ToLowerInvariant() -in $TextExtensions -or
        $File.Name -in @(".gitattributes", ".gitignore")

    if (-not $IsText) {
        return (Get-FileHash $Path -Algorithm SHA256).Hash.ToLowerInvariant()
    }

    $Text = [System.IO.File]::ReadAllText($Path)
    $Normalized = $Text.Replace("`r`n", "`n").Replace("`r", "`n")
    $Utf8WithoutBom = New-Object System.Text.UTF8Encoding($false)
    $Bytes = $Utf8WithoutBom.GetBytes($Normalized)
    $Sha256 = [System.Security.Cryptography.SHA256]::Create()
    try {
        return -join ($Sha256.ComputeHash($Bytes) | ForEach-Object { $_.ToString("x2") })
    }
    finally {
        $Sha256.Dispose()
    }
}

Write-Host "AntigoStack public repository verification"
Write-Host ""

$RequiredFiles = @(
    "README.md",
    "CHANGELOG.md",
    "HISTORY.md",
    "CONTRIBUTING.md",
    "SECURITY.md",
    ".gitattributes",
    ".gitignore",
    "docs/architecture.md",
    "docs/design-principles.md",
    "docs/installation.md",
    "docs/skill-system.md",
    "docs/routing.md",
    "docs/evidence-model.md",
    "docs/manual-handoff.md",
    "docs/github-workflow.md",
    "docs/compatibility.md",
    "examples/README.md",
    "examples/web-runtime-verification.md",
    "examples/vb2010-compatibility.md",
    "examples/security-review.md",
    "examples/data-analysis.md",
    "examples/git-release-discipline.md",
    "tests/scenarios/README.md",
    "tests/scenarios/insecure-client-authorization.md",
    "tests/scenarios/overengineering-small-project.md",
    "tests/scenarios/legacy-vb2010.md",
    "tests/scenarios/deployed-favicon.md",
    "tests/scenarios/noisy-git-history.md",
    "tests/scenarios/deployment-vs-release.md",
    "tests/scenarios/incorrect-user-assumption.md",
    "tests/scenarios/manual-account-action.md",
    ".github/PULL_REQUEST_TEMPLATE.md",
    ".github/workflows/verify.yml",
    "scripts/update-package-hashes.ps1",
    "scripts/verify-repository.ps1"
)

foreach ($RelativePath in $RequiredFiles) {
    if (-not (Test-Path (Join-Path $Root $RelativePath))) {
        Add-Failure "missing required repository file: $RelativePath"
    }
}

$TemporaryPrompt = Join-Path $Root "CodexForge_Public_GitHub_Preparation_Prompt.md"
if (Test-Path $TemporaryPrompt) {
    Add-Failure "temporary preparation prompt is present"
}
else {
    Write-Host "PASS temporary preparation prompt is absent"
}

$Manifest = Get-Content (Join-Path $Root "manifest.json") -Raw | ConvertFrom-Json
$PackData = Get-Content (Join-Path $Root "packs/packs.json") -Raw | ConvertFrom-Json
$LibrarySkills = @(Get-ChildItem (Join-Path $Root "skill-library/skills") -Directory)
$CoreSkills = @(Get-ChildItem (Join-Path $Root ".agents/skills") -Directory)
$Packs = @($PackData.packs.PSObject.Properties)
$Profiles = @($PackData.profiles.PSObject.Properties)

if ($LibrarySkills.Count -ne [int]$Manifest.total_library_skills) {
    Add-Failure "specialist Skill count does not match manifest"
}
if ($CoreSkills.Count -ne [int]$Manifest.default_active_skills) {
    Add-Failure "Core Skill count does not match manifest"
}
if ($Packs.Count -ne 37) {
    Add-Failure "pack count is not 37"
}
if ($Profiles.Count -ne 22) {
    Add-Failure "profile count is not 22"
}
if ($LibrarySkills.Count -eq 197 -and $CoreSkills.Count -eq 18 -and $Packs.Count -eq 37 -and $Profiles.Count -eq 22) {
    Write-Host "PASS inventory counts: 197 specialist Skills, 18 Core Skills, 37 packs, 22 profiles"
}

$SkillFiles = @(
    Get-ChildItem (Join-Path $Root "skill-library/skills") -Recurse -File -Filter "SKILL.md"
    Get-ChildItem (Join-Path $Root ".agents/skills") -Recurse -File -Filter "SKILL.md"
)
$FrontmatterFailures = 0
foreach ($SkillFile in $SkillFiles) {
    $Lines = @(Get-Content $SkillFile.FullName)
    $ClosingLine = -1
    if ($Lines.Count -gt 2 -and $Lines[0] -eq "---") {
        for ($Index = 1; $Index -lt $Lines.Count; $Index++) {
            if ($Lines[$Index] -eq "---") {
                $ClosingLine = $Index
                break
            }
        }
    }
    if ($ClosingLine -lt 2) {
        Add-Failure "invalid frontmatter delimiters: $(Get-RelativePath $SkillFile.FullName)"
        $FrontmatterFailures++
        continue
    }
    $Frontmatter = ($Lines[1..($ClosingLine - 1)] -join "`n")
    if ($Frontmatter -notmatch "(?m)^name:\s*[^\s].*$" -or $Frontmatter -notmatch "(?m)^description:\s*[^\s].*$") {
        Add-Failure "missing name or description frontmatter: $(Get-RelativePath $SkillFile.FullName)"
        $FrontmatterFailures++
    }
}
if ($FrontmatterFailures -eq 0) {
    Write-Host "PASS Skill frontmatter structure: $($SkillFiles.Count) files"
}

$CoreCopyFailures = 0
foreach ($CoreSkill in @($PackData.core)) {
    $CorePath = Join-Path $Root (".agents/skills/{0}/SKILL.md" -f $CoreSkill)
    $LibraryPath = Join-Path $Root ("skill-library/skills/{0}/SKILL.md" -f $CoreSkill)
    if ((Get-RepositoryHash $CorePath) -ne (Get-RepositoryHash $LibraryPath)) {
        Add-Failure "Core Skill differs from library copy: $CoreSkill"
        $CoreCopyFailures++
    }
}
if ($CoreCopyFailures -eq 0) {
    Write-Host "PASS Core Skill copies match library content: $(@($PackData.core).Count) files"
}

$MarkdownFiles = @(Get-ChildItem $Root -Recurse -Force -File -Filter "*.md" | Where-Object {
    -not (Get-RelativePath $_.FullName).StartsWith(".git/")
})
$LinkChecks = 0
$LinkFailureCountBefore = $Failures.Count
foreach ($MarkdownFile in $MarkdownFiles) {
    $Text = Get-Content $MarkdownFile.FullName -Raw
    $Matches = [regex]::Matches($Text, "\[[^\]]*\]\(([^)]+)\)")
    foreach ($Match in $Matches) {
        $Target = $Match.Groups[1].Value.Trim().Trim("<", ">")
        if ($Target -match "^(?:[a-z][a-z0-9+.-]*:|#)" -or $Target -eq "") {
            continue
        }
        $Target = ($Target -split "#", 2)[0]
        $Target = [Uri]::UnescapeDataString($Target)
        $ResolvedTarget = Join-Path $MarkdownFile.DirectoryName $Target
        $LinkChecks++
        if (-not (Test-Path $ResolvedTarget)) {
            Add-Failure "broken local Markdown link in $(Get-RelativePath $MarkdownFile.FullName): $Target"
        }
    }
}
if ($Failures.Count -eq $LinkFailureCountBefore) {
    Write-Host "PASS local Markdown link targets checked: $LinkChecks"
}

$MermaidBlocks = 0
$MermaidFailureCountBefore = $Failures.Count
foreach ($MarkdownFile in $MarkdownFiles) {
    $Lines = @(Get-Content $MarkdownFile.FullName)
    $InMermaid = $false
    $HasDiagramDeclaration = $false
    foreach ($Line in $Lines) {
        if (-not $InMermaid -and $Line.Trim() -eq '```mermaid') {
            $InMermaid = $true
            $HasDiagramDeclaration = $false
            $MermaidBlocks++
            continue
        }
        if ($InMermaid -and $Line -match '^\s*(flowchart|graph|sequenceDiagram|classDiagram|stateDiagram|erDiagram|journey|gantt|pie|mindmap|timeline)\b') {
            $HasDiagramDeclaration = $true
        }
        if ($InMermaid -and $Line.Trim() -eq '```') {
            if (-not $HasDiagramDeclaration) {
                Add-Failure "Mermaid block lacks a supported diagram declaration: $(Get-RelativePath $MarkdownFile.FullName)"
            }
            $InMermaid = $false
        }
    }
    if ($InMermaid) {
        Add-Failure "unclosed Mermaid block: $(Get-RelativePath $MarkdownFile.FullName)"
    }
}
if ($Failures.Count -eq $MermaidFailureCountBefore) {
    Write-Host "PASS Mermaid block structure checked: $MermaidBlocks blocks"
}

$StalePathFiles = @()
Get-ChildItem $Root -Recurse -Force -File -Include "*.md", "*.ps1", "*.json", "*.yml", "*.yaml" | Where-Object {
    -not (Get-RelativePath $_.FullName).StartsWith(".git/")
} | ForEach-Object {
    $Text = Get-Content $_.FullName -Raw -ErrorAction SilentlyContinue
    if ($Text -match '\.codex-engineering-system[\\/]v4(?:[\\/]|\b)') {
        $StalePathFiles += Get-RelativePath $_.FullName
    }
}
if ($StalePathFiles.Count -gt 0) {
    Add-Failure "stale V4 operational paths: $($StalePathFiles -join ', ')"
}
else {
    Write-Host "PASS no stale V4 operational paths"
}

$SecretPatterns = @(
    '-----BEGIN (?:RSA |EC |OPENSSH )?PRIVATE KEY-----',
    '\bgh[pousr]_[A-Za-z0-9]{30,}\b',
    '\bgithub_pat_[A-Za-z0-9_]{50,}\b',
    '\bsk-[A-Za-z0-9]{20,}\b',
    '\bAKIA[0-9A-Z]{16}\b'
)
$SecretFindings = @()
Get-ChildItem $Root -Recurse -Force -File -Include "*.md", "*.ps1", "*.json", "*.yml", "*.yaml" | Where-Object {
    -not (Get-RelativePath $_.FullName).StartsWith(".git/")
} | ForEach-Object {
    $Text = Get-Content $_.FullName -Raw -ErrorAction SilentlyContinue
    foreach ($Pattern in $SecretPatterns) {
        if ($Text -match $Pattern) {
            $SecretFindings += Get-RelativePath $_.FullName
            break
        }
    }
}
if ($SecretFindings.Count -gt 0) {
    Add-Failure "potential secret patterns found: $($SecretFindings -join ', ')"
}
else {
    Write-Host "PASS no high-confidence secret patterns found"
}

$TrailingWhitespace = @()
Get-ChildItem $Root -Recurse -Force -File -Include "*.md", "*.ps1", "*.json", "*.yml", "*.yaml" | Where-Object {
    -not (Get-RelativePath $_.FullName).StartsWith(".git/")
} | ForEach-Object {
    $File = $_
    $LineNumber = 0
    Get-Content $File.FullName | ForEach-Object {
        $LineNumber++
        if ($_ -match "[ \t]+$") {
            $TrailingWhitespace += "$(Get-RelativePath $File.FullName):$LineNumber"
        }
    }
}
if ($TrailingWhitespace.Count -gt 0) {
    Add-Failure "trailing whitespace found: $($TrailingWhitespace -join ', ')"
}
else {
    Write-Host "PASS no trailing whitespace"
}

$HashPath = Join-Path $Root "package-hashes.json"
$HashManifest = Get-Content $HashPath -Raw | ConvertFrom-Json
if ($HashManifest.algorithm -ne "sha256" -or
    $HashManifest.text_normalization -ne "utf-8-lf" -or
    [string]$HashManifest.version -ne [string]$Manifest.version) {
    Add-Failure "hash inventory algorithm, text normalization, or version mismatch"
}

$ActualFiles = @(Get-ChildItem $Root -Recurse -Force -File | Where-Object {
    $RelativePath = Get-RelativePath $_.FullName
    $RelativePath -ne "package-hashes.json" -and
    $RelativePath -ne "CodexForge_Public_GitHub_Preparation_Prompt.md" -and
    -not $RelativePath.StartsWith(".git/")
})
$HashEntries = @($HashManifest.files.PSObject.Properties)
$HashEntryNames = @($HashEntries.Name)
$ActualFileNames = @($ActualFiles | ForEach-Object { Get-RelativePath $_.FullName })

foreach ($File in $ActualFiles) {
    $RelativePath = Get-RelativePath $File.FullName
    if ($RelativePath -notin $HashEntryNames) {
        Add-Failure "file missing from hash inventory: $RelativePath"
        continue
    }
    $ExpectedHash = [string]$HashManifest.files.PSObject.Properties[$RelativePath].Value
    $ActualHash = Get-RepositoryHash $File.FullName
    if ($ActualHash -ne $ExpectedHash.ToLowerInvariant()) {
        Add-Failure "hash mismatch: $RelativePath"
    }
}
foreach ($Entry in $HashEntries) {
    if ($Entry.Name -notin $ActualFileNames) {
        Add-Failure "hash inventory references missing file: $($Entry.Name)"
    }
}
if ($HashEntries.Count -eq $ActualFiles.Count) {
    Write-Host "PASS SHA-256 inventory coverage: $($ActualFiles.Count) files"
}

if ($Failures.Count -gt 0) {
    Write-Host ""
    Write-Error "AntigoStack repository verification failed with $($Failures.Count) issue(s)."
    exit 1
}

Write-Host ""
Write-Host "AntigoStack repository verification passed."
