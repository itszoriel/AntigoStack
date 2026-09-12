---
name: package-release-management
description: "Design intentional version/tag/release workflows with release criteria, semantic compatibility, notes/changelog, artifacts, provenance, rollout, verification, and rollback without equating releases with deployments."
---

# package-release-management

## Purpose

Make versions and releases meaningful, reproducible, and auditable.

## Required Workflow

1. Identify what is actually being released: library/package, desktop/mobile binary, game build, container, API contract, web milestone, or other artifact.
2. Determine whether formal versioning/releases provide user/operator value; do not create them merely to populate GitHub counters.
3. Define release criteria and compatibility rules.
4. Choose version/tag convention consistent with project ecosystem and existing history.
5. Build/test/package from a known commit/ref using reproducible inputs where practical.
6. Generate/review release notes and changelog from meaningful merged changes.
7. Verify signing/provenance/checksums/SBOM where risk/distribution warrants it.
8. Publish using least privilege and immutable/draft workflows where supported.
9. Verify the released artifact, rollout, monitoring and rollback/deprecation plan.

## Release vs Deployment

A deployment changes a running environment. A release communicates/distributes a versioned software iteration. They may be connected, but they are not the same event and do not need matching counts.

## Must Not

- invent version numbers without understanding compatibility/history
- publish from an unverified dirty working tree
- create releases for cosmetic activity
- overwrite published tags/releases without understanding consumer impact
- claim artifact integrity without verifying the actual published artifact

## Expected Outputs

- release criteria and maturity decision
- version/tag plan
- release checklist and notes/changelog strategy
- artifact/provenance verification
- rollout/rollback plan

## Related Skills

- `git-github-engineering`
- `ci-cd-review`
- `software-supply-chain`
- `deployment-readiness`

## V5 Professional Standard

Read `references/EXPERT_PLAYBOOK.md`. Optimize for meaningful version history, not release count.
