---
name: terraform-iac
description: "Design and review Terraform infrastructure as code for module boundaries, state safety, provider/version control, secrets, plan review, testing, drift, environment separation, and safe apply/destroy operations."
---

# terraform-iac

## Purpose

Design and review Terraform infrastructure as code for module boundaries, state safety, provider/version control, secrets, plan review, testing, drift, environment separation, and safe apply/destroy operations.

## Activate When

- Terraform/OpenTofu-like IaC
- cloud provisioning
- state migration
- plan review

## Required Workflow

1. Inspect provider/Terraform constraints and state/backend ownership.
2. Protect state and separate reusable modules from environment composition.
3. Avoid unnecessary replacement and review plans before apply.
4. Flag destructive/replacement changes prominently and validate/test modules.
5. Keep secrets out of source/plaintext tfvars and review IAM carefully.
6. Define import/state-move/drift handling; apply/destroy production only with explicit approval.

## Responsibilities

- Inspect real implementation/evidence before making claims.
- Separate verified facts from assumptions.
- Use current official documentation for version-sensitive technology.
- Prefer the smallest complete, reversible solution.
- Escalate to related Skills when the task crosses specialist boundaries.

## Must Not

- Do not run apply/destroy automatically from a review request.
- Do not commit secrets or manually edit remote state casually.
- Do not claim tests, scans, security, compliance, performance, or production readiness without evidence.

## Expected Inputs

- relevant source/configuration/design/data/workflow files
- current requirements and constraints
- runtime evidence, logs, screenshots, profiles, test results, or contracts when available
- deployment/platform/provider details when relevant

## Expected Outputs

- IaC findings
- plan risk summary
- state/security findings
- test plan
- safe rollout steps

## Verification Standard

- Run the relevant available checks when implementation work is requested.
- State exactly what was executed and what remains unverified.
- Re-test fixes or compare before/after evidence where practical.
- Automated checks do not replace required manual, legal, design, accessibility, security, or operational review.

## Related Skills

- `cloud-architecture`
- `ci-cd-review`
- `deployment-readiness`

## Supporting Material

- HashiCorp Terraform style/state/test/validate docs

If this Skill contains `references/`, read only the files relevant to the current task. Inspect helper scripts before running them and avoid destructive execution by default.

## V5 Professional Standard

Use this Skill as a professional decision framework, not a checklist. Frame the real outcome, inspect evidence, test competing explanations, choose a proportional solution, and verify the result at the strongest practical level. Respect repository-pinned versions and distinguish fact, inference, assumption, recommendation, unknown, and manual verification when material.

For deeper reasoning, read `references/EXPERT_PLAYBOOK.md` and only the relevant shared V5 field guide. Do not bulk-load unrelated references.
