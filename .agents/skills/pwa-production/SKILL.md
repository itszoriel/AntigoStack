---
name: pwa-production
description: Review installable and offline-capable web applications for manifests, service workers, caching, updates, offline UX, storage, security, resilience, and deployment compatibility.
---

# pwa-production

## Purpose

Review installable and offline-capable web applications for manifests, service workers, caching, updates, offline UX, storage, security, resilience, and deployment compatibility.

## Activate When

- PWAs
- service workers
- offline web apps
- web push/background sync

## Required Workflow

1. Review manifest identity/icons/start behavior and service-worker scope/lifecycle.
2. Classify resources by caching strategy rather than caching everything.
3. Prevent sensitive/private response caching.
4. Design explicit offline/stale-data UX and update/version invalidation.
5. Review storage limits, eviction, push/background permissions, and privacy.
6. Test first load, repeat load, offline, reconnect, and upgrade.

## Responsibilities

- Inspect real implementation/evidence before making claims.
- Separate verified facts from assumptions.
- Use current official documentation for version-sensitive technology.
- Prefer the smallest complete, reversible solution.
- Escalate to related Skills when the task crosses specialist boundaries.

## Must Not

- Do not cache authenticated data indiscriminately.
- Do not make core web use depend on installability.
- Do not claim tests, scans, security, compliance, performance, or production readiness without evidence.

## Expected Inputs

- relevant source/configuration/design/data/workflow files
- current requirements and constraints
- runtime evidence, logs, screenshots, profiles, test results, or contracts when available
- deployment/platform/provider details when relevant

## Expected Outputs

- caching matrix
- offline/update findings
- storage/security findings
- test plan

## Verification Standard

- Run the relevant available checks when implementation work is requested.
- State exactly what was executed and what remains unverified.
- Re-test fixes or compare before/after evidence where practical.
- Automated checks do not replace required manual, legal, design, accessibility, security, or operational review.

## Related Skills

- `offline-sync`
- `web-production`
- `deployment-readiness`

## Supporting Material

- MDN Service Worker/PWA docs

If this Skill contains `references/`, read only the files relevant to the current task. Inspect helper scripts before running them and avoid destructive execution by default.
