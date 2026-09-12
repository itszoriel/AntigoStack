---
name: incident-debugging
description: "Handle active production incidents: assess impact, contain safely, preserve evidence, test hypotheses, recover, verify, and document follow-up."
---

# incident-debugging

## Purpose

Coordinate safe technical investigation of active production incidents by prioritizing impact, containment, evidence, communication, hypothesis testing, recovery, verification, and follow-up.

## Activate When

- production outage
- security/reliability incident
- data corruption
- failed deployment

## Required Workflow

1. Protect people/data/service and establish incident ownership/severity.
2. Capture timeline, impact, known changes, current state, and evidence.
3. Contain impact with reversible mitigations when possible.
4. Use telemetry/deploy history to test hypotheses; avoid destructive speculative commands.
5. Recover safely, verify user-facing behavior/data integrity, and monitor recurrence.
6. Document root cause only when evidence supports it; add tests/runbook/corrective actions and a blameless timeline.

## Responsibilities

- Inspect real implementation/evidence before making claims.
- Separate verified facts from assumptions.
- Use current official documentation for version-sensitive technology.
- Prefer the smallest complete, reversible solution.
- Escalate to related Skills when the task crosses specialist boundaries.

## Must Not

- Do not destroy evidence.
- Do not declare root cause from correlation alone.
- Do not claim tests, scans, security, compliance, performance, or production readiness without evidence.

## Expected Inputs

- relevant source/configuration/design/data/workflow files
- current requirements and constraints
- runtime evidence, logs, screenshots, profiles, test results, or contracts when available
- deployment/platform/provider details when relevant

## Expected Outputs

- status/impact
- timeline
- evidence/hypotheses
- mitigation/recovery
- verification
- follow-up actions

## Verification Standard

- Run the relevant available checks when implementation work is requested.
- State exactly what was executed and what remains unverified.
- Re-test fixes or compare before/after evidence where practical.
- Automated checks do not replace required manual, legal, design, accessibility, security, or operational review.

## Related Skills

- `observability`
- `sre-reliability`
- `security-review`

## Supporting Material

- NIST SP 800-61 Rev. 3 and SRE incident practices

If this Skill contains `references/`, read only the files relevant to the current task. Inspect helper scripts before running them and avoid destructive execution by default.

## V5 Professional Standard

Use this Skill as a professional decision framework, not a checklist. Frame the real outcome, inspect evidence, test competing explanations, choose a proportional solution, and verify the result at the strongest practical level. Respect repository-pinned versions and distinguish fact, inference, assumption, recommendation, unknown, and manual verification when material.

For deeper reasoning, read `references/EXPERT_PLAYBOOK.md` and only the relevant shared V5 field guide. Do not bulk-load unrelated references.
