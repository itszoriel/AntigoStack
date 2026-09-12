# Expert Playbook — `soc-siem-operations`

## Professional stance

SOC/SIEM defensive operations: log onboarding, normalization, detections, alert triage, correlation, enrichment, cases, escalation, tuning, and retention.

A strong practitioner starts from the actual outcome and evidence rather than immediately applying a favorite tool or pattern. The job is to reach a defensible result with the least unnecessary complexity.

## Broad-to-specific knowledge map

### Field-level mental models
- assets, actors, trust boundaries and attacker goals
- authentication versus authorization versus business entitlement
- least privilege, secure defaults and server-side enforcement
- input/output/data-flow attack surfaces
- abuse/business-logic/race/resource-exhaustion paths
- secrets/key lifecycle and supply-chain trust
- detection, response, recovery and residual risk

### Skill-specific operating scope
The existing required workflow defines the concrete task sequence. Treat these as checkpoints rather than blind steps:
- Establish authorized scope and assets.
- Identify identities, trust boundaries, sensitive data, and critical operations.
- Use standards/official guidance appropriate to the technology.
- Prioritize realistic risk and evidence rather than theoretical severity alone.
- Prefer defensive validation and least privilege.
- Define remediation ownership and verification.
- Record residual risk and monitoring needs.

### Boundaries with neighboring specialties
- Coordinate with `security-review` when the problem materially crosses that boundary; do not duplicate its full scope.
- Coordinate with `threat-model` when the problem materially crosses that boundary; do not duplicate its full scope.
- Coordinate with `incident-debugging` when the problem materially crosses that boundary; do not duplicate its full scope.
- Coordinate with `privacy-compliance-review` when the problem materially crosses that boundary; do not duplicate its full scope.

## Questions a professional asks before acting
- What is the protected asset and who can act on it?
- Where is authorization enforced for every object/action?
- What can an attacker control, replay, reorder, upload, redirect, or exhaust?
- What trust crosses tenant/account/service boundaries?
- What evidence proves a finding and what remains untested?
- What is the blast radius if a credential/dependency/control fails?

Add task-specific questions derived from the repository, data, users, deployment target, and failure evidence before choosing an implementation.

## Investigation and diagnostic method
1. Establish the desired outcome, current symptom/state, risk, and success criterion.
2. Inspect the strongest available evidence rather than relying on the request wording alone.
3. Identify the relevant lifecycle, boundaries, dependencies, state/data flow, and invariants for this Skill.
4. Form competing explanations or design options.
5. Use the cheapest reliable observation/test to eliminate weak hypotheses.
6. Choose the smallest complete solution that fits project scale and pinned versions.
7. Implement without mixing unrelated cleanup.
8. Re-run the original scenario plus regression/edge checks.
9. Report residual risk and anything that still requires runtime, production, specialist, or manual verification.

## Tooling and evidence
- OWASP/NIST guidance and current platform security docs
- SAST/SCA/secret scans and dependency advisories
- authorized DAST/API tests/fuzzing when appropriate
- logs/audit trails and IAM policy analyzers
- threat models and abuse-case tests

Prefer project-native tools first. Add a new dependency/tool only when it provides material evidence or repeatable value.

## Decision framework

When several solutions can work, compare them on: correctness, compatibility, security/privacy, reliability, maintainability, performance/cost, operational burden, reversibility, migration impact, and project scale. Explicitly reject an inferior option when evidence makes the difference material; do not argue over equivalent stylistic choices.

## Common failure modes to actively look for
- security by UI hiding
- treating authentication as authorization
- automated scanner output accepted without triage
- claiming no findings means secure
- broad permissions for convenience
- security fixes that break recovery/operability
- compliance claims from technical checks alone

### Skill-specific prohibitions already defined
- perform unauthorized offensive testing
- claim compliance/security certification
- remove controls merely to make systems work
- expose sensitive evidence

## Verification and professional deliverable

Use the V5 evidence ladder. A professional deliverable should contain the result/implementation, the evidence that supports it, the verification actually run, material trade-offs, unresolved risk, and a precise manual handoff when access or human judgment is required.

Expected domain deliverables include:
- evidence-based defensive findings
- prioritized remediation
- verification plan
- residual-risk notes

## Progressive-disclosure references

Read only when needed:

- `~/.codex-engineering-system/v5/skill-library/shared-references/FIELD_SECURITY.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/PROFESSIONAL_REASONING.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/EVIDENCE_AND_VERIFICATION.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/VERSION_COMPATIBILITY.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/MANUAL_HANDOFF.md` when a user action boundary is reached
