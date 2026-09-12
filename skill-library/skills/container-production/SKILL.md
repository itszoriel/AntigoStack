---
name: container-production
description: "Build and review Docker/OCI container images for minimal trusted bases, deterministic builds, context hygiene, secret handling, non-root execution, shutdown behavior, vulnerabilities, and reproducibility."
---

# container-production

## Purpose

Build and review Docker/OCI container images for minimal trusted bases, deterministic builds, context hygiene, secret handling, non-root execution, shutdown behavior, vulnerabilities, and reproducibility.

## Activate When

- Dockerfiles
- containerizing apps
- image hardening
- registry releases

## Required Workflow

1. Use trusted maintained bases and minimize runtime packages.
2. Use multi-stage builds when useful and a restrictive .dockerignore.
3. Keep secrets out of layers/build args and runtime config external.
4. Run non-root where practical; keep mutable state outside image layers.
5. Handle signals/shutdown and control versions/rebuilds.
6. Build/test/scan images in CI and inventory the artifact.

## Responsibilities

- Inspect real implementation/evidence before making claims.
- Separate verified facts from assumptions.
- Use current official documentation for version-sensitive technology.
- Prefer the smallest complete, reversible solution.
- Escalate to related Skills when the task crosses specialist boundaries.

## Must Not

- Do not bake production secrets into images.
- Do not run as root without reason.
- Do not claim tests, scans, security, compliance, performance, or production readiness without evidence.

## Expected Inputs

- relevant source/configuration/design/data/workflow files
- current requirements and constraints
- runtime evidence, logs, screenshots, profiles, test results, or contracts when available
- deployment/platform/provider details when relevant

## Expected Outputs

- Dockerfile/image findings
- layer/secrets findings
- runtime recommendations
- CI/SBOM actions

## Verification Standard

- Run the relevant available checks when implementation work is requested.
- State exactly what was executed and what remains unverified.
- Re-test fixes or compare before/after evidence where practical.
- Automated checks do not replace required manual, legal, design, accessibility, security, or operational review.

## Related Skills

- `software-supply-chain`
- `kubernetes-production`
- `ci-cd-review`

## Supporting Material

- Docker best practices and OCI/security guidance

If this Skill contains `references/`, read only the files relevant to the current task. Inspect helper scripts before running them and avoid destructive execution by default.

## V5 Professional Standard

Use this Skill as a professional decision framework, not a checklist. Frame the real outcome, inspect evidence, test competing explanations, choose a proportional solution, and verify the result at the strongest practical level. Respect repository-pinned versions and distinguish fact, inference, assumption, recommendation, unknown, and manual verification when material.

For deeper reasoning, read `references/EXPERT_PLAYBOOK.md` and only the relevant shared V5 field guide. Do not bulk-load unrelated references.
