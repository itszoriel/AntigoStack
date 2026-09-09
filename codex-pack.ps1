[CmdletBinding()]
param(
    [Parameter(Position=0)]
    [ValidateSet("list","status","enable","disable","reset","profile","auto")]
    [string]$Command = "status",

    [Parameter(Position=1)]
    [string[]]$Name,

    [string]$ProjectPath = "."
)

$ErrorActionPreference = "Stop"

$V4Root = Join-Path $HOME ".codex-engineering-system\v4"
$ManifestPath = Join-Path $V4Root "manifest.json"
$PacksPath = Join-Path $V4Root "packs\packs.json"
$LibraryRoot = Join-Path $V4Root "skill-library\skills"
$ActiveRoot = Join-Path $HOME ".agents\skills"
$StatePath = Join-Path $V4Root "state.json"

foreach ($p in @($ManifestPath,$PacksPath,$LibraryRoot)) {
    if (-not (Test-Path $p)) { throw "V4 is not installed correctly. Missing: $p" }
}

$Manifest = Get-Content $ManifestPath -Raw | ConvertFrom-Json
$PackData = Get-Content $PacksPath -Raw | ConvertFrom-Json
New-Item -ItemType Directory -Force $ActiveRoot | Out-Null

function Get-State {
    if (Test-Path $StatePath) {
        return Get-Content $StatePath -Raw | ConvertFrom-Json
    }
    return [pscustomobject]@{ enabled_packs = @() }
}

function Save-State([string[]]$Packs) {
    @{
        version = "4.0.0"
        enabled_packs = @($Packs | Sort-Object -Unique)
        updated = (Get-Date).ToString("o")
    } | ConvertTo-Json -Depth 5 | Set-Content $StatePath -Encoding UTF8
}

function Get-PackNames {
    return @($PackData.packs.PSObject.Properties.Name)
}

function Resolve-Skills([string[]]$PackNames) {
    $skills = New-Object System.Collections.Generic.HashSet[string]
    foreach($s in $PackData.core){ [void]$skills.Add([string]$s) }
    foreach($pack in $PackNames) {
        $prop = $PackData.packs.PSObject.Properties[$pack]
        if ($null -eq $prop) { throw "Unknown pack: $pack" }
        foreach($s in $prop.Value){ [void]$skills.Add([string]$s) }
    }
    return @($skills | Sort-Object)
}

function Apply-Packs([string[]]$PackNames) {
    $desired = Resolve-Skills $PackNames
    $managed = @($Manifest.skills)

    # Remove only V4-managed skills; preserve unrelated user-created skills.
    foreach($skill in $managed) {
        $dest = Join-Path $ActiveRoot $skill
        if (Test-Path $dest) {
            Remove-Item $dest -Recurse -Force
        }
    }

    foreach($skill in $desired) {
        $src = Join-Path $LibraryRoot $skill
        $dest = Join-Path $ActiveRoot $skill
        if (-not (Test-Path (Join-Path $src "SKILL.md"))) {
            throw "Library Skill missing: $skill"
        }
        Copy-Item $src $dest -Recurse
    }

    Save-State $PackNames
    Write-Host ""
    Write-Host "Active V4 Skills: $($desired.Count)"
    Write-Host "Enabled packs: $((@($PackNames) -join ', '))"
    Write-Host "Restart Codex if the active Skill list does not refresh automatically."
}

function Detect-Packs([string]$Path) {
    $resolved = (Resolve-Path $Path).Path
    $detected = New-Object System.Collections.Generic.HashSet[string]

    function Add-Pack([string]$p){ [void]$detected.Add($p) }

    if (Test-Path (Join-Path $resolved "package.json")) {
        $pkgText = Get-Content (Join-Path $resolved "package.json") -Raw
        Add-Pack "web-foundation"
        Add-Pack "web-js-ts"
        if ($pkgText -match '"react"' -or $pkgText -match '"next"') { Add-Pack "web-js-ts" }
        if ($pkgText -match '"react-native"') { Add-Pack "mobile-crossplatform" }
        if ($pkgText -match '"electron"') { Add-Pack "desktop-apps" }
    }
    if (Test-Path (Join-Path $resolved "composer.json")) { Add-Pack "web-foundation"; Add-Pack "web-php"; Add-Pack "databases-sql" }
    if (Test-Path (Join-Path $resolved "pyproject.toml") -or Test-Path (Join-Path $resolved "requirements.txt")) {
        Add-Pack "web-python"
    }
    if (Test-Path (Join-Path $resolved "pom.xml") -or Test-Path (Join-Path $resolved "build.gradle") -or Test-Path (Join-Path $resolved "build.gradle.kts")) {
        Add-Pack "web-java"
    }
    if (Get-ChildItem $resolved -Filter "*.csproj" -Recurse -ErrorAction SilentlyContinue | Select-Object -First 1) {
        Add-Pack "web-dotnet"
    }
    if (Test-Path (Join-Path $resolved "Gemfile")) { Add-Pack "web-ruby" }
    if (Test-Path (Join-Path $resolved "pubspec.yaml")) { Add-Pack "mobile-crossplatform" }
    if (Get-ChildItem $resolved -Filter "*.xcodeproj" -Directory -ErrorAction SilentlyContinue | Select-Object -First 1) { Add-Pack "mobile-apple" }
    if (Test-Path (Join-Path $resolved "AndroidManifest.xml") -or Test-Path (Join-Path $resolved "app\src\main\AndroidManifest.xml")) { Add-Pack "mobile-android" }
    if (Get-ChildItem $resolved -Filter "*.uproject" -Recurse -ErrorAction SilentlyContinue | Select-Object -First 1) { Add-Pack "game-core"; Add-Pack "game-unreal"; Add-Pack "creative-3d" }
    if (Test-Path (Join-Path $resolved "project.godot")) { Add-Pack "game-core"; Add-Pack "game-godot"; Add-Pack "creative-3d" }
    if (Test-Path (Join-Path $resolved "ProjectSettings\ProjectVersion.txt") -and Test-Path (Join-Path $resolved "Assets")) { Add-Pack "game-core"; Add-Pack "game-unity"; Add-Pack "creative-3d" }
    if (Get-ChildItem $resolved -Filter "*.tf" -Recurse -ErrorAction SilentlyContinue | Select-Object -First 1) { Add-Pack "cloud-devops" }
    if (Test-Path (Join-Path $resolved "Dockerfile")) { Add-Pack "cloud-devops" }
    if (Test-Path (Join-Path $resolved "dbt_project.yml")) { Add-Pack "data-engineering"; Add-Pack "databases-sql" }
    if (Get-ChildItem $resolved -Filter "*.ipynb" -Recurse -ErrorAction SilentlyContinue | Select-Object -First 1) { Add-Pack "data-analyst"; Add-Pack "ml-data-science" }

    return @($detected | Sort-Object)
}

$state = Get-State
$current = @($state.enabled_packs)

switch ($Command) {
    "list" {
        Write-Host "Available packs:"
        foreach($p in (Get-PackNames | Sort-Object)) {
            $count = @($PackData.packs.PSObject.Properties[$p].Value).Count
            Write-Host "  $p ($count Skills)"
        }
        Write-Host ""
        Write-Host "Profiles:"
        foreach($p in ($PackData.profiles.PSObject.Properties.Name | Sort-Object)) {
            $vals = @($PackData.profiles.PSObject.Properties[$p].Value) -join ", "
            Write-Host "  $p -> $vals"
        }
    }
    "status" {
        $desired = Resolve-Skills $current
        Write-Host "Enabled packs: $($current -join ', ')"
        Write-Host "Expected active V4 Skills: $($desired.Count)"
        Write-Host "Core active Skills: $(@($PackData.core).Count)"
    }
    "enable" {
        if (-not $Name) { throw "Specify one or more pack names." }
        $next = @($current + $Name | Sort-Object -Unique)
        Apply-Packs $next
    }
    "disable" {
        if (-not $Name) { throw "Specify one or more pack names." }
        $next = @($current | Where-Object { $_ -notin $Name })
        Apply-Packs $next
    }
    "reset" {
        Apply-Packs @()
    }
    "profile" {
        if (-not $Name -or $Name.Count -ne 1) { throw "Specify one profile name." }
        $profileName = $Name[0]
        $prop = $PackData.profiles.PSObject.Properties[$profileName]
        if ($null -eq $prop) { throw "Unknown profile: $profileName" }
        Apply-Packs @($prop.Value)
    }
    "auto" {
        $found = Detect-Packs $ProjectPath
        Write-Host "Detected packs for: $ProjectPath"
        if ($found.Count -eq 0) {
            Write-Host "  No specialized pack confidently detected; keeping core only."
            Apply-Packs @()
        } else {
            $found | ForEach-Object { Write-Host "  - $_" }
            Apply-Packs $found
        }
    }
}
