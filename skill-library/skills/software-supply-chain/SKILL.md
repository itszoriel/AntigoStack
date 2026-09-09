---
name: software-supply-chain
description: Review and harden the path from source to released artifact, including dependencies, CI permissions, build runners, provenance, attestations, SBOMs, package publishing, containers, and release integrity.
---

# software-supply-chain

## Purpose

Review and harden the path from source to released artifact, including dependencies, CI permissions, build runners, provenance, attestations, SBOMs, package publishing, containers, and release integrity.

## Activate When

- CI/CD
- package/container publishing
- SBOM/provenance
- release signing

## Required Workflow

1. Map source to dependency resolution, build, test, package, registry, and deploy.
2. Identify who/what can modify each stage.
3. Review CI tokens, runners, untrusted PR/fork execution, and third-party actions.
4. Review lockfiles, dependency provenance, and licenses.
5. Generate/validate SBOMs and provenance where justified.
6. Protect signing/release credentials and verify published artifact identity.

## Responsibilities

- Inspect real implementation/evidence before making claims.
- Separate verified facts from assumptions.
- Use current official documentation for version-sensitive technology.
- Prefer the smallest complete, reversible solution.
- Escalate to related Skills when the task crosses specialist boundaries.

## Must Not

- Do not treat SBOMs as proof code is safe.
- Do not expose signing keys to untrusted CI.
- Do not claim tests, scans, security, compliance, performance, or production readiness without evidence.

## Expected Inputs

- relevant source/configuration/design/data/workflow files
- current requirements and constraints
- runtime evidence, logs, screenshots, profiles, test results, or contracts when available
- deployment/platform/provider details when relevant

## Expected Outputs

- supply-chain map
- CI trust findings
- SBOM/provenance plan
- release-integrity checklist

## Verification Standard

- Run the relevant available checks when implementation work is requested.
- State exactly what was executed and what remains unverified.
- Re-test fixes or compare before/after evidence where practical.
- Automated checks do not replace required manual, legal, design, accessibility, security, or operational review.

## Related Skills

- `dependency-security`
- `ci-cd-review`
- `container-production`

## Supporting Material

- SLSA, SPDX, CycloneDX, GitHub Actions security

If this Skill contains `references/`, read only the files relevant to the current task. Inspect helper scripts before running them and avoid destructive execution by default.
