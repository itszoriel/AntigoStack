---
name: mobile-production
description: "Review and harden iOS, Android, Flutter, React Native, Unity-mobile, and similar apps across lifecycle, permissions, storage, networking, privacy, accessibility, offline behavior, performance, deep links, and release configuration."
---

# mobile-production

## Purpose

Review and harden iOS, Android, Flutter, React Native, Unity-mobile, and similar apps across lifecycle, permissions, storage, networking, privacy, accessibility, offline behavior, performance, deep links, and release configuration.

## Activate When

- iOS/Android apps
- Flutter/React Native
- mobile release hardening
- permissions/deep links/push

## Required Workflow

1. Identify target OS/device/version matrix and lifecycle/background behavior.
2. Request only necessary permissions and review secure storage, networking/TLS, offline/timeout behavior, auth/session persistence.
3. Review deep links, push, accessibility/text scaling, orientation/input.
4. Review memory, battery, startup, frame time, background work, crash telemetry, privacy, and SDKs.
5. Verify production signing/build configuration.
6. Use app-store-release for submission/policy work.

## Responsibilities

- Inspect real implementation/evidence before making claims.
- Separate verified facts from assumptions.
- Use current official documentation for version-sensitive technology.
- Prefer the smallest complete, reversible solution.
- Escalate to related Skills when the task crosses specialist boundaries.

## Must Not

- Do not embed server secrets or request unnecessary permissions.
- Do not assume emulator-only testing is enough.
- Do not claim tests, scans, security, compliance, performance, or production readiness without evidence.

## Expected Inputs

- relevant source/configuration/design/data/workflow files
- current requirements and constraints
- runtime evidence, logs, screenshots, profiles, test results, or contracts when available
- deployment/platform/provider details when relevant

## Expected Outputs

- mobile quality/security/privacy findings
- device test matrix
- performance risks
- release blockers

## Verification Standard

- Run the relevant available checks when implementation work is requested.
- State exactly what was executed and what remains unverified.
- Re-test fixes or compare before/after evidence where practical.
- Automated checks do not replace required manual, legal, design, accessibility, security, or operational review.

## Related Skills

- `app-store-release`
- `offline-sync`
- `security-review`

## Supporting Material

- OWASP MASVS, Android Core Quality, Apple guidance

If this Skill contains `references/`, read only the files relevant to the current task. Inspect helper scripts before running them and avoid destructive execution by default.

## V5 Professional Standard

Use this Skill as a professional decision framework, not a checklist. Frame the real outcome, inspect evidence, test competing explanations, choose a proportional solution, and verify the result at the strongest practical level. Respect repository-pinned versions and distinguish fact, inference, assumption, recommendation, unknown, and manual verification when material.

For deeper reasoning, read `references/EXPERT_PLAYBOOK.md` and only the relevant shared V5 field guide. Do not bulk-load unrelated references.
