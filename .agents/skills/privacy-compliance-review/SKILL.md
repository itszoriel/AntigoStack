---
name: privacy-compliance-review
description: "Review personal data, cookies, tracking, consent, retention, deletion, third parties, AI processing, and privacy-disclosure mismatches."
---

# privacy-compliance-review

## Purpose

Review software data practices, cookies, tracking, telemetry, consent, retention, sharing, deletion, user rights, third-party SDKs, AI processing, and privacy disclosures.

## Activate When

- personal data
- cookies/analytics/ads
- AI processing
- third-party SDKs
- account deletion/export

## Required Workflow

1. Identify known jurisdictions/audiences and build a field-level data inventory.
2. Identify sensitive categories and apply data minimization to every field.
3. Inventory cookies, SDKs, pixels, analytics, embeds, and tracking.
4. Review consent timing, rejection/withdrawal/preferences, processors, retention, deletion/export, backups, and logs.
5. Compare actual behavior with privacy disclosures.
6. Review AI/automation for hidden provider transfer/retention and flag legal questions.

## Responsibilities

- Inspect real implementation/evidence before making claims.
- Separate verified facts from assumptions.
- Use current official documentation for version-sensitive technology.
- Prefer the smallest complete, reversible solution.
- Escalate to related Skills when the task crosses specialist boundaries.

## Must Not

- Do not claim GDPR/CCPA/etc. compliance.
- Do not invent lawful basis or jurisdiction facts.
- Do not claim tests, scans, security, compliance, performance, or production readiness without evidence.

## Expected Inputs

- relevant source/configuration/design/data/workflow files
- current requirements and constraints
- runtime evidence, logs, screenshots, profiles, test results, or contracts when available
- deployment/platform/provider details when relevant

## Expected Outputs

- data-flow inventory
- tracking inventory
- minimization findings
- disclosure mismatches
- legal-review questions

## Verification Standard

- Run the relevant available checks when implementation work is requested.
- State exactly what was executed and what remains unverified.
- Re-test fixes or compare before/after evidence where practical.
- Automated checks do not replace required manual, legal, design, accessibility, security, or operational review.

## Related Skills

- `content-legal-readiness`
- `web-analytics-tagging`
- `agent-security`

## Supporting Material

- GDPR principles, ICO guidance, California privacy regulations

If this Skill contains `references/`, read only the files relevant to the current task. Inspect helper scripts before running them and avoid destructive execution by default.

## V5 Professional Standard

Use this Skill as a professional decision framework, not a checklist. Frame the real outcome, inspect evidence, test competing explanations, choose a proportional solution, and verify the result at the strongest practical level. Respect repository-pinned versions and distinguish fact, inference, assumption, recommendation, unknown, and manual verification when material.

For deeper reasoning, read `references/EXPERT_PLAYBOOK.md` and only the relevant shared V5 field guide. Do not bulk-load unrelated references.
