# V5.0.1 Compatibility Patch

- Fixed `install-update.ps1` parsing on Windows PowerShell 5.1 caused by a UTF-8-without-BOM non-ASCII em dash in the script.
- Rewrote the installer in ASCII-safe PowerShell with clearer command syntax.
- Made `-WhatIf` side-effect free for V5-managed directories.
- Added a regression check that parses every `.ps1` file during `verify-package.ps1`.
- Added an ASCII-safety check for PowerShell scripts to protect Windows PowerShell 5.1 compatibility.
- Updated installer/package state version to `5.0.1`.

# V5.0 Changelog

## Professional behavior
- Truth over agreement / anti-sycophancy protocol.
- Distinguishes factual errors, trade-offs and preferences.
- Evidence labels and no false completion.
- Detailed manual handoff protocol with verification/troubleshooting/rollback/resume point.
- Proportionality rule against needless enterprise complexity.
- Version/environment detection before version-sensitive work.

## Skill intelligence
- Every Skill receives an expert playbook and V5 source map.
- Shared field guides cover programming languages, web/API, data/analytics, data platforms, security, AI/agents, cloud/DevOps, Git/release, mobile/desktop, games, creative design, IT/networking, automation/enterprise, specialist systems, and public-facing/legal/content readiness.
- Progressive disclosure preserved; only 18 Core Skills active by default.

## Web correctness
- New `web-runtime-verification` Skill.
- SEO and launch readiness now distinguish source, build, local runtime, deployed and external-observable evidence.
- Favicon checks use rendered production `rel=icon` and actual public asset response; root-folder placement is not treated as a requirement.

## GitHub intelligence
- Clean commit boundaries and AI-agent commit hygiene.
- Local verification before unnecessary pushes.
- PR/merge strategy matched to repository maturity.
- CI trigger/concurrency/deployment-noise review.
- Deployments and Releases treated as separate concepts.
- New `github-release` pack/profile.

## Compatibility
- Fixed stale V4 paths.
- Added Visual Studio 2010 / VB.NET compatibility references.

## Research QA and routing hardening
- Split the overly broad public-facing field guide into dedicated accessibility, SEO/search discovery, localization/i18n, web analytics, web performance, and web runtime guides.
- Rewrote those specialist playbooks so their questions, diagnostics, tools, failure modes, and evidence are domain-specific.
- Narrowed every Skill's `SOURCE_MAP_V5.md` to relevant authoritative/canonical source families and added `V5_SKILL_RESEARCH_MATRIX.md`.
- Hardened `auto` pack detection so a generic `package.json`, `pyproject.toml`, Maven/Gradle project, `.csproj`, `Gemfile`, or ordinary GitHub workflow does not automatically imply a web/release stack.
- Narrowed the VB.NET pack; desktop and ASP.NET expertise are layered only when project evidence or an explicit profile calls for them.
- Fixed invalid YAML frontmatter in 68 generated Skill files by safely quoting every Skill description; all 197 library Skills and all 18 active Core copies now parse as valid YAML.
- Strengthened the VB.NET legacy reference with explicit Visual Basic 10 / Visual Studio 2010 multi-targeting guidance and a hard repository-defined framework/compiler ceiling.
