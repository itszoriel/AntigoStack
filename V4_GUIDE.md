# Codex Engineering System V4 Guide

## What V4 fixes

V3 exposed all 192 Skills globally. Codex warned that Skill descriptions were shortened to fit its
initial Skill context budget.

V4 keeps the **same 192-Skill specialist library**, but only **18 universal Skills** are active
by default.

The specialist Skills remain installed in a private V4 library and can be:

1. read on demand by `technology-skill-router` for the current task
2. enabled as a pack for recurring work
3. enabled through a ready-made profile
4. auto-detected from a repository with `codex-pack.ps1 auto`

## Installed layout

```text
C:\Users\paula\.codex\AGENTS.md

C:\Users\paula\.agents\skills\
└── 18 default active core Skills

C:\Users\paula\.codex-engineering-system\v4\
├── skill-library\skills\      # all 192 Skills
├── packs\packs.json
├── codex-pack.ps1
├── state.json
└── V4_GUIDE.md
```

## Normal daily use

You can continue prompting Codex normally.

For a focused task, V4 tells Codex to inspect the actual stack and use only the relevant specialist
instructions.

You do **not** need to manually enable a pack for every one-off task. The router can read exact
library Skills on demand.

## When to enable a pack

Enable a pack when you will work repeatedly in the same technology area.

Installed manager:

```powershell
& "$HOME\.codex-engineering-system\v4\codex-pack.ps1" list
```

Status:

```powershell
& "$HOME\.codex-engineering-system\v4\codex-pack.ps1" status
```

Enable packs:

```powershell
& "$HOME\.codex-engineering-system\v4\codex-pack.ps1" enable web-foundation web-js-ts
```

Disable one:

```powershell
& "$HOME\.codex-engineering-system\v4\codex-pack.ps1" disable web-js-ts
```

Return to the compact core:

```powershell
& "$HOME\.codex-engineering-system\v4\codex-pack.ps1" reset
```

## Profiles

Examples:

```powershell
& "$HOME\.codex-engineering-system\v4\codex-pack.ps1" profile web-typescript
& "$HOME\.codex-engineering-system\v4\codex-pack.ps1" profile web-php
& "$HOME\.codex-engineering-system\v4\codex-pack.ps1" profile data-analyst
& "$HOME\.codex-engineering-system\v4\codex-pack.ps1" profile ai-agent
& "$HOME\.codex-engineering-system\v4\codex-pack.ps1" profile unity-game
& "$HOME\.codex-engineering-system\v4\codex-pack.ps1" profile unreal-game
& "$HOME\.codex-engineering-system\v4\codex-pack.ps1" profile godot-game
```

A profile replaces the currently enabled packs with the profile's recommended set.

## Automatic project detection

Before opening Codex in a project:

```powershell
& "$HOME\.codex-engineering-system\v4\codex-pack.ps1" auto -ProjectPath "C:\path\to\project"
```

Examples the detector recognizes include package.json, composer.json, Python project files,
Java/Gradle/Maven, .csproj, Gemfile, Flutter, Android, Unreal .uproject, Godot project.godot,
Unity ProjectSettings, Terraform, Docker, dbt, and notebooks.

Auto-detection is intentionally conservative and should not be treated as infallible.

## Pack list

### `ai-llm` — 9 Skills

`ai-app-engineering`, `ai-agent-engineering`, `agent-evals`, `rag-engineering`, `agent-security`, `mcp-security`, `ai-governance-red-team`, `vector-database-production`, `automation-reliability`

### `automation` — 8 Skills

`automation-architecture`, `automation-reliability`, `n8n-production`, `make-production`, `rpa-lowcode-platforms`, `webhook-production`, `messaging-queues`, `agent-security`

### `blockchain-hpc` — 6 Skills

`blockchain-engineering`, `gpu-hpc-computing`, `rust-engineering`, `cpp-engineering`, `secrets-key-management`, `security-review`

### `career-collaboration` — 7 Skills

`portfolio-job-readiness`, `open-source-contribution`, `agile-project-delivery`, `technical-estimation-planning`, `package-release-management`, `monorepo-build-tooling`, `programming-language-selection`

### `cloud-devops` — 15 Skills

`cloud-architecture`, `aws-production`, `azure-production`, `gcp-production`, `serverless-production`, `container-production`, `kubernetes-production`, `terraform-iac`, `configuration-management`, `ci-cd-review`, `software-supply-chain`, `sre-reliability`, `finops-review`, `reverse-proxy-cdn`, `dns-tls-http`

### `creative-3d` — 7 Skills

`blender-production`, `3d-asset-pipeline`, `creative-3d-dcc-production`, `technical-art-shaders`, `cad-technical-modeling`, `photogrammetry-scanning`, `creative-media-production`

### `cybersecurity` — 13 Skills

`secure-sdlc`, `application-security-testing`, `vulnerability-management`, `cloud-security`, `software-supply-chain`, `auth-identity`, `agent-security`, `mcp-security`, `soc-siem-operations`, `digital-forensics-response`, `zero-trust-security-architecture`, `secrets-key-management`, `enterprise-iam`

### `data-analyst` — 8 Skills

`excel-spreadsheet-analysis`, `analytics-bi`, `bi-platforms-production`, `sql-engineering`, `statistics-experimentation`, `data-visualization-storytelling`, `data-quality-governance`, `r-engineering`

### `data-engineering` — 8 Skills

`data-engineering`, `data-orchestration`, `data-quality-governance`, `big-data-processing`, `warehouse-lakehouse`, `sql-engineering`, `database-review`, `analytics-bi`

### `databases-nosql-search` — 8 Skills

`database-review`, `backup-recovery`, `mongodb-production`, `redis-production`, `graph-database-production`, `vector-database-production`, `search-engineering`, `timeseries-database-production`

### `databases-sql` — 8 Skills

`database-review`, `migration-safety`, `backup-recovery`, `sql-engineering`, `postgres-production`, `mysql-mariadb-production`, `sqlite-production`, `timeseries-database-production`

### `desktop-apps` — 8 Skills

`electron-production`, `tauri-production`, `dotnet-maui-production`, `csharp-dotnet-engineering`, `rust-engineering`, `javascript-engineering`, `typescript-engineering`, `offline-sync`

### `embedded-robotics` — 7 Skills

`c-engineering`, `cpp-engineering`, `rust-engineering`, `embedded-iot-production`, `robotics-ros2-production`, `networking-engineering`, `secrets-key-management`

### `enterprise` — 7 Skills

`enterprise-platforms`, `enterprise-iam`, `rpa-lowcode-platforms`, `automation-reliability`, `webhook-production`, `api-review`, `data-quality-governance`

### `game-core` — 12 Skills

`game-production`, `gameplay-systems`, `game-ai-navigation`, `game-animation`, `game-audio`, `game-economy-liveops`, `game-platform-release`, `game-performance-profiling`, `game-qa-accessibility`, `game-security-anticheat`, `multiplayer-networking`, `ecs-game-architecture`

### `game-godot` — 9 Skills

`godot-production`, `game-production`, `gameplay-systems`, `game-ai-navigation`, `game-animation`, `game-audio`, `game-performance-profiling`, `multiplayer-networking`, `game-security-anticheat`

### `game-unity` — 10 Skills

`unity-production`, `csharp-dotnet-engineering`, `game-production`, `gameplay-systems`, `game-ai-navigation`, `game-animation`, `game-audio`, `game-performance-profiling`, `multiplayer-networking`, `game-security-anticheat`

### `game-unreal` — 10 Skills

`unreal-production`, `cpp-engineering`, `game-production`, `gameplay-systems`, `game-ai-navigation`, `game-animation`, `game-audio`, `game-performance-profiling`, `multiplayer-networking`, `game-security-anticheat`

### `it-ops-networking` — 9 Skills

`it-support-troubleshooting`, `linux-sysadmin`, `windows-sysadmin`, `networking-engineering`, `dns-tls-http`, `reverse-proxy-cdn`, `endpoint-device-management`, `enterprise-iam`, `secrets-key-management`

### `ml-data-science` — 9 Skills

`data-science-production`, `ml-engineering`, `mlops-production`, `specialized-ml-systems`, `statistics-experimentation`, `python-engineering`, `r-engineering`, `data-quality-governance`, `gpu-hpc-computing`

### `mobile-android` — 8 Skills

`kotlin-engineering`, `android-kotlin-production`, `mobile-production`, `app-store-release`, `offline-sync`, `auth-identity`, `accessibility-review`, `localization-i18n`

### `mobile-apple` — 8 Skills

`swift-engineering`, `ios-swift-production`, `mobile-production`, `app-store-release`, `offline-sync`, `auth-identity`, `accessibility-review`, `localization-i18n`

### `mobile-crossplatform` — 8 Skills

`dart-engineering`, `flutter-production`, `react-native-production`, `dotnet-maui-production`, `mobile-production`, `app-store-release`, `offline-sync`, `accessibility-review`

### `product-design` — 10 Skills

`product-ux-discovery`, `design-system-review`, `figma-product-design`, `visual-design-canva`, `creative-media-production`, `accessibility-review`, `localization-i18n`, `content-legal-readiness`, `technical-estimation-planning`, `agile-project-delivery`

### `specialist-misc` — 4 Skills

`go-engineering`, `load-testing`, `qa-automation`, `shell-powershell-engineering`

### `web-dotnet` — 8 Skills

`csharp-dotnet-engineering`, `aspnet-core-production`, `api-review`, `api-contracts-openapi`, `backend-production`, `auth-identity`, `grpc-production`, `realtime-systems`

### `web-foundation` — 17 Skills

`html-css-web-platform`, `javascript-engineering`, `web-production`, `frontend-production`, `accessibility-review`, `seo-review`, `web-performance`, `web-launch-readiness`, `web-analytics-tagging`, `pwa-production`, `localization-i18n`, `content-legal-readiness`, `design-system-review`, `email-deliverability`, `browser-extension-production`, `web-scraping-crawling`, `webassembly-production`

### `web-java` — 8 Skills

`java-engineering`, `spring-java-production`, `api-review`, `api-contracts-openapi`, `backend-production`, `auth-identity`, `grpc-production`, `messaging-queues`

### `web-js-ts` — 15 Skills

`javascript-engineering`, `typescript-engineering`, `nodejs-backend`, `react-nextjs-production`, `vue-nuxt-production`, `angular-production`, `svelte-modern-web-production`, `graphql-production`, `grpc-production`, `api-review`, `api-contracts-openapi`, `backend-production`, `realtime-systems`, `webhook-production`, `payments-commerce`

### `web-php` — 10 Skills

`php-engineering`, `php-web-frameworks`, `wordpress-cms-production`, `api-review`, `api-contracts-openapi`, `backend-production`, `auth-identity`, `payments-commerce`, `webhook-production`, `realtime-systems`

### `web-python` — 8 Skills

`python-engineering`, `python-web-frameworks`, `api-review`, `api-contracts-openapi`, `backend-production`, `auth-identity`, `webhook-production`, `realtime-systems`

### `web-realtime-media` — 7 Skills

`realtime-systems`, `webrtc-production`, `webhook-production`, `event-driven-architecture`, `messaging-queues`, `grpc-production`, `graphql-production`

### `web-ruby` — 6 Skills

`ruby-engineering`, `rails-production`, `api-review`, `backend-production`, `auth-identity`, `webhook-production`

### `xr-spatial` — 5 Skills

`xr-spatial-computing`, `webxr-threejs`, `technical-art-shaders`, `3d-asset-pipeline`, `game-performance-profiling`

## Context-budget check

After changing packs:

```powershell
& "$HOME\.codex-engineering-system\v4\verify-active-budget.ps1"
```

Or from the extracted package:

```powershell
.\verify-active-budget.ps1
```

The script estimates the initial metadata footprint using Skill names, descriptions, and paths.
It is a practical approximation, not Codex's exact internal tokenizer/accounting.

## Important rule

Do not enable every pack simultaneously. That recreates the V3 problem.

If you need a one-off specialist technology, let the router read its library Skill on demand.

## Behavioral test

Inside a fresh Codex session:

```text
Inspect this repository and tell me the actual stack and which specialist V4 Skills are relevant.
Do not assume a language or framework and do not modify files yet.
```

Then try a real task without naming any Skill and see whether Codex identifies the correct
language/framework/engine.

## Rollback

```powershell
.\rollback-latest.ps1 -WhatIf
.\rollback-latest.ps1
```
