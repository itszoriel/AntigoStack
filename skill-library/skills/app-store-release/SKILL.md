---
name: app-store-release
description: "Prepare Apple App Store and Google Play releases by checking production builds, signing, metadata, screenshots, privacy/data declarations, permissions, subscriptions/IAP, review notes, rollout, monitoring, and rollback."
---

# app-store-release

## Purpose

Prepare Apple App Store and Google Play releases by checking production builds, signing, metadata, screenshots, privacy/data declarations, permissions, subscriptions/IAP, review notes, rollout, monitoring, and rollback.

## Activate When

- App Store submission
- Google Play release
- privacy/data-safety forms
- IAP/subscriptions

## Required Workflow

1. Read current platform policies before submission.
2. Confirm package/bundle IDs, versioning, signing, and release configuration.
3. Remove debug/test-only behavior and verify metadata/screenshots match shipping functionality.
4. Inventory app and SDK data collection; align privacy/data-safety declarations.
5. Review permissions, account deletion, subscriptions/IAP, reviewer access/instructions.
6. Test clean install, upgrade, critical flows, staged rollout, and post-release monitoring.

## Responsibilities

- Inspect real implementation/evidence before making claims.
- Separate verified facts from assumptions.
- Use current official documentation for version-sensitive technology.
- Prefer the smallest complete, reversible solution.
- Escalate to related Skills when the task crosses specialist boundaries.

## Must Not

- Do not misrepresent data collection.
- Do not submit features/screenshots not present in the build.
- Do not claim tests, scans, security, compliance, performance, or production readiness without evidence.

## Expected Inputs

- relevant source/configuration/design/data/workflow files
- current requirements and constraints
- runtime evidence, logs, screenshots, profiles, test results, or contracts when available
- deployment/platform/provider details when relevant

## Expected Outputs

- submission checklist
- metadata/privacy mismatches
- policy risks
- reviewer instructions
- rollout/rollback plan

## Verification Standard

- Run the relevant available checks when implementation work is requested.
- State exactly what was executed and what remains unverified.
- Re-test fixes or compare before/after evidence where practical.
- Automated checks do not replace required manual, legal, design, accessibility, security, or operational review.

## Related Skills

- `mobile-production`
- `privacy-compliance-review`
- `payments-commerce`

## Supporting Material

- Apple App Review and Google Play policy docs

If this Skill contains `references/`, read only the files relevant to the current task. Inspect helper scripts before running them and avoid destructive execution by default.

## V5 Professional Standard

Use this Skill as a professional decision framework, not a checklist. Frame the real outcome, inspect evidence, test competing explanations, choose a proportional solution, and verify the result at the strongest practical level. Respect repository-pinned versions and distinguish fact, inference, assumption, recommendation, unknown, and manual verification when material.

For deeper reasoning, read `references/EXPERT_PLAYBOOK.md` and only the relevant shared V5 field guide. Do not bulk-load unrelated references.
