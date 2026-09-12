---
name: ci-cd-review
description: "Review CI/CD for deterministic evidence, secure least-privilege execution, efficient triggers/concurrency, clean preview/staging/production deployment behavior, artifact integrity, gates, and rollback."
---

# ci-cd-review

## Purpose

Make pipelines produce trustworthy evidence and intentional deployments without wasting runs or turning every agent iteration into production activity.

## Required Workflow

1. Inventory workflow files, events/triggers, reusable workflows, environments, provider Git integrations, secrets/permissions, artifacts, caches and deployment targets.
2. Map each trigger to its purpose: PR validation, branch CI, preview deployment, staging, production, scheduled maintenance, or release.
3. Identify duplicate paths where both GitHub Actions and a hosting provider deploy the same push.
4. Check concurrency groups, cancellation/serialization semantics, branch/tag filters, path filters and environment gates.
5. Verify least-privilege token permissions, untrusted-fork boundaries, secret exposure, third-party action pinning and artifact provenance.
6. Check deterministic install/build/test behavior, cache keys, matrix relevance and failure visibility.
7. Ensure production deploys have proportional pre-deploy checks and post-deploy smoke/rollback behavior.
8. Separate deploy workflow from release publication when the product lifecycle warrants it.
9. Measure/estimate run noise and cost before adding more jobs.

## Deployment Noise Rules

- Cancel superseded preview/branch work when safe and supported.
- Serialize conflicting production deployments when ordering matters.
- Do not use a shared concurrency group that can cancel unrelated workflows.
- Do not add remote CI merely for checks that are cheap/reliable locally unless central enforcement is needed.

## Must Not

- expose secrets to untrusted code
- deploy production from ambiguous/unreviewed refs
- weaken required checks simply to make a pipeline green
- claim a provider deployment is fixed without deployed evidence
- assume every deployment should create a Release

## Expected Outputs

- trigger/environment map
- wasted/duplicate run findings
- permissions/supply-chain findings
- proposed CI/deploy/release flow
- verification and rollback plan

## Related Skills

- `git-github-engineering`
- `deployment-readiness`
- `package-release-management`
- `software-supply-chain`
- `cloud-security`

## V5 Professional Standard

Read `references/EXPERT_PLAYBOOK.md`; prefer evidence-producing pipelines over activity-producing pipelines.
