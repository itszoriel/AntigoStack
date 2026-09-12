# V5 Static QA Report

Build/audit date: 2026-09-12

## Result

**STATIC PACKAGE QA: PASS**

This report records checks actually performed on the generated V5 package. It deliberately separates static verification from runtime verification.

## Verified in the build environment

- Library Skill directories: **197 / 197**
- Bundled active Core Skills: **18 / 18**
- Packs: **37**
- Profiles: **22**
- Shared professional/reference guides: **28**
- Every library Skill contains `SKILL.md`: **197 / 197**
- Every library Skill contains `references/EXPERT_PLAYBOOK.md`: **197 / 197**
- Every library Skill contains `references/SOURCE_MAP_V5.md`: **197 / 197**
- Skill YAML frontmatter parsed successfully with a YAML parser: **197 / 197**
- Bundled active Core copies match their library Skill copies byte-for-byte: **18 / 18**
- Pack Skill references resolve to real library Skills: **PASS**
- Profile references resolve to real packs: **PASS**
- Shared-reference links checked by the static audit resolve: **PASS**
- Runtime/instruction routing uses the V5 library path; no stale V4 routing path was found: **PASS**
- `web-runtime-verification` is present and included in the web foundation pack: **PASS**
- GitHub release intelligence pack/profile is present: **PASS**
- VB.NET pack remains intentionally narrow; desktop/web specialists are layered only when evidence/profile requires them: **PASS**
- Approximate active-Core discovery metadata footprint: **4,712 characters**, below the V5 8,000-character reference guardrail.
- JSON files parsed successfully: **PASS**
- PowerShell files passed basic delimiter-balance/static inspection: **PASS (static only)**
- SHA-256 package manifest entries verified against the final working tree: **901 / 901**

## Defects caught and corrected during QA

1. Several public-web specialties had inherited an over-broad legal/content expert template. They were split into domain-specific accessibility, SEO/discovery, localization, web analytics, web performance and web-runtime field guidance.
2. Source maps were initially too broad for some technologies. They were narrowed to specialty-relevant authoritative/canonical sources.
3. Auto pack detection initially over-classified generic language repositories as web/release projects. Detection was made evidence-based and more conservative.
4. **68 generated Skill descriptions contained YAML-sensitive colons without safe quoting.** All 197 Skill descriptions were normalized to valid YAML frontmatter and reparsed successfully.
5. Visual Studio 2010 compatibility guidance was tightened to treat VS2010 as Visual Basic 10-era tooling while keeping the actual `.vbproj` target framework authoritative because VS2010 supports multi-targeting.

## Not verified in this build environment

A PowerShell runtime (`pwsh`/Windows PowerShell) is not installed in the package-build container. Therefore the `.ps1` files were **not executed here**. They were structurally/static checked only.

Before installation on Windows, run:

```powershell
Set-ExecutionPolicy -Scope Process Bypass
.\verify-package.ps1
.\install-update.ps1 -WhatIf
```

Only proceed with the real installer after those checks succeed.

Runtime behavior inside the user's actual Codex installation, project repositories, IDEs, deployment providers and external services also remains environment-specific and must be verified there. The package must not claim those outcomes from static inspection alone.

## Evidence policy

This report uses **VERIFIED FACT** only for checks performed against the package in the build environment. PowerShell execution and user-environment behavior are explicitly marked **MANUAL VERIFICATION REQUIRED** rather than inferred from file existence.
