---
name: ci-cd-review
description: Review continuous integration and delivery pipelines for deterministic builds, minimal permissions, secret safety, untrusted-code isolation, tests, artifact provenance, environments, deployment gates, and rollback.
---

# ci-cd-review

## Purpose

Review continuous integration and delivery pipelines for deterministic builds, minimal permissions, secret safety, untrusted-code isolation, tests, artifact provenance, environments, deployment gates, and rollback.

## Activate When

- CI/CD pipelines
- GitHub Actions/GitLab/Azure DevOps
- release automation

## Required Workflow

1. Map trigger to runner, build, test, artifact, and deploy.
2. Review job/token permissions, forks/PRs with secrets, runners, and short-lived credentials.
3. Review third-party actions/plugins, lockfiles, deterministic installs, and fail-closed tests.
4. Separate dev/staging/prod credentials and promote trusted artifacts.
5. Add provenance/attestation where justified and protect production deployment with gates.
6. Verify rollback/roll-forward and post-deploy smoke tests.

## Responsibilities

- Inspect real implementation/evidence before making claims.
- Separate verified facts from assumptions.
- Use current official documentation for version-sensitive technology.
- Prefer the smallest complete, reversible solution.
- Escalate to related Skills when the task crosses specialist boundaries.

## Must Not

- Do not expose prod secrets to untrusted PRs.
- Do not disable failing tests to unblock deploy.
- Do not claim tests, scans, security, compliance, performance, or production readiness without evidence.

## Expected Inputs

- relevant source/configuration/design/data/workflow files
- current requirements and constraints
- runtime evidence, logs, screenshots, profiles, test results, or contracts when available
- deployment/platform/provider details when relevant

## Expected Outputs

- pipeline trust map
- credential/build-integrity findings
- release gates
- rollback recommendations

## Verification Standard

- Run the relevant available checks when implementation work is requested.
- State exactly what was executed and what remains unverified.
- Re-test fixes or compare before/after evidence where practical.
- Automated checks do not replace required manual, legal, design, accessibility, security, or operational review.

## Related Skills

- `software-supply-chain`
- `deployment-readiness`
- `container-production`

## Supporting Material

- GitHub Actions security and SLSA

If this Skill contains `references/`, read only the files relevant to the current task. Inspect helper scripts before running them and avoid destructive execution by default.
