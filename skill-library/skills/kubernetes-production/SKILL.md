---
name: kubernetes-production
description: "Review Kubernetes workloads and platform configuration for tenancy, identity, Pod Security, resources, probes, rollout, networking, secrets, storage, autoscaling, observability, and availability."
---

# kubernetes-production

## Purpose

Review Kubernetes workloads and platform configuration for tenancy, identity, Pod Security, resources, probes, rollout, networking, secrets, storage, autoscaling, observability, and availability.

## Activate When

- Kubernetes manifests
- Helm charts
- cluster workloads
- K8s security/reliability

## Required Workflow

1. Identify workload, namespace, tenant, and cluster assumptions.
2. Review security context, Pod Security, service accounts/workload identity, secrets.
3. Define resource requests/limits and startup/readiness/liveness probes.
4. Review rollout, disruption, termination, network exposure/policies.
5. Review volumes/backups, autoscaling, failure domains, logs/metrics/events.
6. Validate rendered manifests and only apply to production with explicit authorization.

## Responsibilities

- Inspect real implementation/evidence before making claims.
- Separate verified facts from assumptions.
- Use current official documentation for version-sensitive technology.
- Prefer the smallest complete, reversible solution.
- Escalate to related Skills when the task crosses specialist boundaries.

## Must Not

- Do not apply to production during read-only review.
- Do not copy secrets into manifests.
- Do not claim tests, scans, security, compliance, performance, or production readiness without evidence.

## Expected Inputs

- relevant source/configuration/design/data/workflow files
- current requirements and constraints
- runtime evidence, logs, screenshots, profiles, test results, or contracts when available
- deployment/platform/provider details when relevant

## Expected Outputs

- workload findings
- RBAC/security findings
- reliability/resource findings
- rollout/rollback plan

## Verification Standard

- Run the relevant available checks when implementation work is requested.
- State exactly what was executed and what remains unverified.
- Re-test fixes or compare before/after evidence where practical.
- Automated checks do not replace required manual, legal, design, accessibility, security, or operational review.

## Related Skills

- `container-production`
- `cloud-architecture`
- `terraform-iac`
- `observability`

## Supporting Material

- Kubernetes security checklist, Pod Security, probes/resources docs

If this Skill contains `references/`, read only the files relevant to the current task. Inspect helper scripts before running them and avoid destructive execution by default.

## V5 Professional Standard

Use this Skill as a professional decision framework, not a checklist. Frame the real outcome, inspect evidence, test competing explanations, choose a proportional solution, and verify the result at the strongest practical level. Respect repository-pinned versions and distinguish fact, inference, assumption, recommendation, unknown, and manual verification when material.

For deeper reasoning, read `references/EXPERT_PLAYBOOK.md` and only the relevant shared V5 field guide. Do not bulk-load unrelated references.
