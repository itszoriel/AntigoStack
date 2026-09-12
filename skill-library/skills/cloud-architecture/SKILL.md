---
name: cloud-architecture
description: "Perform provider-neutral cloud architecture reviews using reliability, security, operational excellence, performance, cost, data, networking, identity, scaling, recovery, and sustainability considerations."
---

# cloud-architecture

## Purpose

Perform provider-neutral cloud architecture reviews using reliability, security, operational excellence, performance, cost, data, networking, identity, scaling, recovery, and sustainability considerations.

## Activate When

- AWS/Azure/GCP architecture
- cloud migration
- new production platform
- scale/reliability redesign

## Required Workflow

1. Define business criticality, workload profile, recovery needs, and constraints.
2. Map components/trust boundaries and review identity/least privilege.
3. Review networking, DNS/TLS, exposure, data durability, backup/recovery.
4. Review failure domains, scaling/capacity, quotas, and managed-service limits.
5. Review observability, deployment/change safety, performance, cost, and lock-in tradeoffs.
6. Use current provider docs for concrete implementation.

## Responsibilities

- Inspect real implementation/evidence before making claims.
- Separate verified facts from assumptions.
- Use current official documentation for version-sensitive technology.
- Prefer the smallest complete, reversible solution.
- Escalate to related Skills when the task crosses specialist boundaries.

## Must Not

- Do not recommend multi-region complexity without requirements.
- Do not assume managed means secure/backed up by default.
- Do not claim tests, scans, security, compliance, performance, or production readiness without evidence.

## Expected Inputs

- relevant source/configuration/design/data/workflow files
- current requirements and constraints
- runtime evidence, logs, screenshots, profiles, test results, or contracts when available
- deployment/platform/provider details when relevant

## Expected Outputs

- architecture assessment
- critical risks
- trade-offs
- prioritized improvements

## Verification Standard

- Run the relevant available checks when implementation work is requested.
- State exactly what was executed and what remains unverified.
- Re-test fixes or compare before/after evidence where practical.
- Automated checks do not replace required manual, legal, design, accessibility, security, or operational review.

## Related Skills

- `deployment-readiness`
- `sre-reliability`
- `finops-review`
- `terraform-iac`

## Supporting Material

- AWS/Azure Well-Architected and current provider docs

If this Skill contains `references/`, read only the files relevant to the current task. Inspect helper scripts before running them and avoid destructive execution by default.

## V5 Professional Standard

Use this Skill as a professional decision framework, not a checklist. Frame the real outcome, inspect evidence, test competing explanations, choose a proportional solution, and verify the result at the strongest practical level. Respect repository-pinned versions and distinguish fact, inference, assumption, recommendation, unknown, and manual verification when material.

For deeper reasoning, read `references/EXPERT_PLAYBOOK.md` and only the relevant shared V5 field guide. Do not bulk-load unrelated references.
