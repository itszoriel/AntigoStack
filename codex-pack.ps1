[CmdletBinding()]
param(
    [Parameter(Position=0)]
    [ValidateSet("list","status","enable","disable","reset","profile","auto")]
    [string]$Command = "status",
    [Parameter(Position=1)] [string[]]$Name,
    [string]$ProjectPath = "."
)
$ErrorActionPreference = "Stop"
$V5Root = Join-Path $HOME ".codex-engineering-system\v5"
$ManifestPath = Join-Path $V5Root "manifest.json"
$PacksPath = Join-Path $V5Root "packs\packs.json"
$LibraryRoot = Join-Path $V5Root "skill-library\skills"
$ActiveRoot = Join-Path $HOME ".agents\skills"
$StatePath = Join-Path $V5Root "state.json"
foreach ($p in @($ManifestPath,$PacksPath,$LibraryRoot)) { if (-not (Test-Path $p)) { throw "V5 is not installed correctly. Missing: $p" } }
$Manifest = Get-Content $ManifestPath -Raw | ConvertFrom-Json
$PackData = Get-Content $PacksPath -Raw | ConvertFrom-Json
New-Item -ItemType Directory -Force $ActiveRoot | Out-Null
function Get-State { if (Test-Path $StatePath) { return Get-Content $StatePath -Raw | ConvertFrom-Json }; return [pscustomobject]@{ enabled_packs=@() } }
function Save-State([string[]]$Packs) { @{version="5.0.0";enabled_packs=@($Packs|Sort-Object -Unique);updated=(Get-Date).ToString("o")} | ConvertTo-Json -Depth 5 | Set-Content $StatePath -Encoding UTF8 }
function Get-PackNames { @($PackData.packs.PSObject.Properties.Name) }
function Resolve-Skills([string[]]$PackNames) {
    $skills=New-Object System.Collections.Generic.HashSet[string]
    foreach($s in $PackData.core){[void]$skills.Add([string]$s)}
    foreach($pack in $PackNames){$prop=$PackData.packs.PSObject.Properties[$pack]; if($null -eq $prop){throw "Unknown pack: $pack"}; foreach($s in $prop.Value){[void]$skills.Add([string]$s)}}
    @($skills|Sort-Object)
}
function Apply-Packs([string[]]$PackNames){
    $desired=Resolve-Skills $PackNames; $managed=@($Manifest.skills)
    foreach($skill in $managed){$dest=Join-Path $ActiveRoot $skill; if(Test-Path $dest){Remove-Item $dest -Recurse -Force}}
    foreach($skill in $desired){$src=Join-Path $LibraryRoot $skill; $dest=Join-Path $ActiveRoot $skill; if(-not(Test-Path(Join-Path $src "SKILL.md"))){throw "Library Skill missing: $skill"}; Copy-Item $src $dest -Recurse}
    Save-State $PackNames
    Write-Host ""; Write-Host "Active V5 Skills: $($desired.Count)"; Write-Host "Enabled packs: $((@($PackNames)-join ', '))"; Write-Host "Restart Codex if the active Skill list does not refresh automatically."
}
function Detect-Packs([string]$Path){
    $resolved=(Resolve-Path $Path).Path; $detected=New-Object System.Collections.Generic.HashSet[string]
    function Add-Pack([string]$p){[void]$detected.Add($p)}
    function Read-TextSafe([string]$p){ if(Test-Path $p){ return (Get-Content $p -Raw -ErrorAction SilentlyContinue) }; return "" }

    # JavaScript/TypeScript: inspect dependencies instead of assuming every package.json is a web app.
    $packagePath=Join-Path $resolved "package.json"
    if(Test-Path $packagePath){
        $pkg=Read-TextSafe $packagePath
        if($pkg -match '"(next|react|react-dom|vue|nuxt|@angular/core|svelte|@sveltejs/kit|vite)"'){Add-Pack "web-foundation";Add-Pack "web-js-ts"}
        elseif($pkg -match '"(express|fastify|koa|hapi|@nestjs/core|apollo-server|graphql-yoga)"'){Add-Pack "web-js-ts"}
        if($pkg -match '"(react-native|expo)"'){Add-Pack "mobile-crossplatform"}
        if($pkg -match '"electron"'){Add-Pack "desktop-apps"}
    }

    # PHP: only activate the web pack when framework/CMS evidence exists.
    $composerPath=Join-Path $resolved "composer.json"
    if(Test-Path $composerPath){
        $composer=Read-TextSafe $composerPath
        if($composer -match 'laravel/|symfony/|wordpress|slim/|cakephp/|codeigniter'){Add-Pack "web-foundation";Add-Pack "web-php";Add-Pack "databases-sql"}
    }

    # Python: distinguish web from analysis/ML evidence.
    $pyText=(Read-TextSafe (Join-Path $resolved "pyproject.toml"))+"`n"+(Read-TextSafe (Join-Path $resolved "requirements.txt"))
    if($pyText){
        if($pyText -match '(django|flask|fastapi|starlette|uvicorn|gunicorn)'){Add-Pack "web-python"}
        if($pyText -match '(pandas|polars|jupyter|matplotlib|seaborn|statsmodels)'){Add-Pack "data-analyst"}
        if($pyText -match '(scikit-learn|sklearn|torch|tensorflow|jax|xgboost|lightgbm)'){Add-Pack "ml-data-science"}
    }

    # Java/Kotlin: distinguish Spring web/backend from Android and generic JVM projects.
    $javaFiles=@("pom.xml","build.gradle","build.gradle.kts") | ForEach-Object { Join-Path $resolved $_ }
    $javaText=($javaFiles | ForEach-Object { Read-TextSafe $_ }) -join "`n"
    if($javaText){
        if($javaText -match '(spring-boot|org\.springframework)'){Add-Pack "web-java"}
        if($javaText -match '(com\.android\.application|com\.android\.library|androidx\.)'){Add-Pack "mobile-android"}
    }

    # .NET: detect Web SDK separately from desktop. Generic .csproj does not imply ASP.NET.
    $csProjects=Get-ChildItem $resolved -Filter "*.csproj" -Recurse -ErrorAction SilentlyContinue
    foreach($csp in $csProjects){
        $ct=Read-TextSafe $csp.FullName
        if($ct -match 'Microsoft\.NET\.Sdk\.Web|Microsoft\.AspNetCore'){Add-Pack "web-dotnet"}
        if($ct -match '<UseWindowsForms>\s*true\s*</UseWindowsForms>|System\.Windows\.Forms|<UseWPF>\s*true\s*</UseWPF>|PresentationFramework'){Add-Pack "dotnet-desktop"}
        if($ct -match 'Microsoft\.Maui|<UseMaui>\s*true\s*</UseMaui>'){Add-Pack "mobile-crossplatform"}
    }

    # VB.NET: language pack is narrow; layer desktop/web only when project evidence supports it.
    $vbProjects=Get-ChildItem $resolved -Filter "*.vbproj" -Recurse -ErrorAction SilentlyContinue
    foreach($vb in $vbProjects){
        Add-Pack "dotnet-vb"
        $vbt=Read-TextSafe $vb.FullName
        if($vbt -match 'Microsoft\.NET\.Sdk\.Web|Microsoft\.AspNetCore|System\.Web'){Add-Pack "web-dotnet"}
        if($vbt -match '<UseWindowsForms>\s*true\s*</UseWindowsForms>|System\.Windows\.Forms|<UseWPF>\s*true\s*</UseWPF>|PresentationFramework|<ProjectTypeGuids>'){Add-Pack "dotnet-desktop"}
    }

    # Ruby: Rails evidence only; generic Gemfile does not imply a web application.
    $gemfile=Join-Path $resolved "Gemfile"
    if(Test-Path $gemfile){$gem=Read-TextSafe $gemfile;if($gem -match 'gem\s+[''"]rails[''"]'){Add-Pack "web-ruby"}}

    $pubspec=Read-TextSafe (Join-Path $resolved "pubspec.yaml")
    if($pubspec -match '(?m)^\s*flutter\s*:'){Add-Pack "mobile-crossplatform"}
    if(Get-ChildItem $resolved -Filter "*.xcodeproj" -Directory -ErrorAction SilentlyContinue|Select-Object -First 1){Add-Pack "mobile-apple"}
    if((Test-Path (Join-Path $resolved "AndroidManifest.xml")) -or (Test-Path (Join-Path $resolved "app\src\main\AndroidManifest.xml"))){Add-Pack "mobile-android"}

    if(Get-ChildItem $resolved -Filter "*.uproject" -Recurse -ErrorAction SilentlyContinue|Select-Object -First 1){Add-Pack "game-core";Add-Pack "game-unreal";Add-Pack "creative-3d"}
    if(Test-Path(Join-Path $resolved "project.godot")){Add-Pack "game-core";Add-Pack "game-godot";Add-Pack "creative-3d"}
    if((Test-Path (Join-Path $resolved "ProjectSettings\ProjectVersion.txt")) -and (Test-Path (Join-Path $resolved "Assets"))){Add-Pack "game-core";Add-Pack "game-unity";Add-Pack "creative-3d"}
    if(Get-ChildItem $resolved -Filter "*.tf" -Recurse -ErrorAction SilentlyContinue|Select-Object -First 1){Add-Pack "cloud-devops"}
    if(Test-Path(Join-Path $resolved "Dockerfile")){Add-Pack "cloud-devops"}
    if(Test-Path(Join-Path $resolved "dbt_project.yml")){Add-Pack "data-engineering";Add-Pack "databases-sql"}
    if(Get-ChildItem $resolved -Filter "*.ipynb" -Recurse -ErrorAction SilentlyContinue|Select-Object -First 1){Add-Pack "data-analyst"}

    # GitHub release/CI pack only when workflow content indicates deploy/release/publish behavior.
    $wfRoot=Join-Path $resolved ".github\workflows"
    if(Test-Path $wfRoot){
        $wfText=(Get-ChildItem $wfRoot -File -ErrorAction SilentlyContinue | ForEach-Object { Read-TextSafe $_.FullName }) -join "`n"
        if($wfText -match '(?im)\b(deploy|deployment|release|publish|environment:|workflow_dispatch|tags:)\b'){Add-Pack "github-release"}
    }
    @($detected|Sort-Object)
}
$state=Get-State; $current=@($state.enabled_packs)
switch($Command){
 "list" {Write-Host "Available packs:"; foreach($p in(Get-PackNames|Sort-Object)){$count=@($PackData.packs.PSObject.Properties[$p].Value).Count;Write-Host "  $p ($count Skills)"};Write-Host "";Write-Host "Profiles:";foreach($p in($PackData.profiles.PSObject.Properties.Name|Sort-Object)){$vals=@($PackData.profiles.PSObject.Properties[$p].Value)-join ", ";Write-Host "  $p -> $vals"}}
 "status" {$desired=Resolve-Skills $current;Write-Host "Enabled packs: $($current -join ', ')";Write-Host "Expected active V5 Skills: $($desired.Count)";Write-Host "Core active Skills: $(@($PackData.core).Count)"}
 "enable" {if(-not $Name){throw "Specify one or more pack names."};Apply-Packs @($current+$Name|Sort-Object -Unique)}
 "disable" {if(-not $Name){throw "Specify one or more pack names."};Apply-Packs @($current|Where-Object{$_ -notin $Name})}
 "reset" {Apply-Packs @()}
 "profile" {if(-not $Name -or $Name.Count -ne 1){throw "Specify one profile name."};$prop=$PackData.profiles.PSObject.Properties[$Name[0]];if($null -eq $prop){throw "Unknown profile: $($Name[0])"};Apply-Packs @($prop.Value)}
 "auto" {$found=Detect-Packs $ProjectPath;Write-Host "Detected packs for: $ProjectPath";if($found.Count -eq 0){Write-Host "  No specialized pack confidently detected; keeping core only.";Apply-Packs @()}else{$found|ForEach-Object{Write-Host "  - $_"};Apply-Packs $found}}
}
