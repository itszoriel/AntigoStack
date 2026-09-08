---
name: tauri-production
description: Tauri desktop apps: Rust frontend/backend boundary, commands, capabilities/permissions, updater/signing, native integration, packaging, and security.
---

# tauri-production

**Category:** Mobile / Desktop

## Purpose

Tauri desktop apps: Rust frontend/backend boundary, commands, capabilities/permissions, updater/signing, native integration, packaging, and security.

## Activate When

- the project targets this native/cross-platform stack
- store/package release work
- platform-specific lifecycle/security/performance issues

## Required Workflow

1. Detect target OS versions/devices and framework version.
2. Review lifecycle, background/foreground, permissions, storage, networking, and deep links.
3. Review accessibility and device/layout variation.
4. Review performance/memory/battery or desktop resource behavior.
5. Review native bridge/plugin permissions.
6. Review crash reporting and privacy.
7. Build and test a release configuration.
8. Use platform-specific release guidance.

## Must Not

- rewrite a working stack merely because another language/framework is preferred
- ignore the repository's pinned compiler/runtime/framework version
- hide compile, type, lint, test, or runtime failures instead of fixing the cause
- add dependencies without a concrete need and maintenance/security consideration

## Expected Outputs

- platform-specific findings
- device/version test matrix
- release/security/privacy blockers

## Verification Standard

- Inspect the actual repository, configuration, runtime, build output, or project files before making technology-specific claims.
- Use the project's pinned versions and current official documentation rather than assuming the newest release.
- Run the relevant formatter, compiler/type checker, tests, linter, build, package, or runtime checks when the task changes code.
- State what was verified and what remains unverified.

## Related Skills

- `mobile-production`
- `app-store-release`
- `offline-sync`
- `security-review`

## Primary Reference Families

- Tauri official docs

## Completion Rule

Prefer the repository's established conventions when sound. Do not claim production readiness, security, compliance, performance, or correctness beyond the evidence actually obtained.
