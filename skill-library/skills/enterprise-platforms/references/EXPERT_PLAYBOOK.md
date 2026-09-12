# Expert Playbook — `enterprise-platforms`

## Professional stance

Enterprise development/integration across Microsoft 365/Graph, Google Workspace, ServiceNow, Salesforce, SAP, and similar systems: identity, APIs, webhooks, records, permissions, auditability, quotas, and sandbox/production separation.

A strong practitioner starts from the actual outcome and evidence rather than immediately applying a favorite tool or pattern. The job is to reach a defensible result with the least unnecessary complexity.

## Broad-to-specific knowledge map

### Field-level mental models
- business process and system-of-record ownership
- trigger semantics, idempotency and deduplication
- credential/permission boundaries
- state, retries, compensation and reconciliation
- rate limits, quotas and cost
- human approval for consequential actions
- auditability and observability

### Skill-specific operating scope
The existing required workflow defines the concrete task sequence. Treat these as checkpoints rather than blind steps:
- Identify exact hardware/platform/protocol/vendor versions.
- Define safety, latency, performance, reliability, and data constraints.
- Use official specifications/vendor docs for hardware/API semantics.
- Prototype and measure uncertain hardware/performance behavior.
- Design failure and recovery behavior.
- Review security, permissions, update mechanism, and observability.
- Test on representative real hardware/platform where feasible.

### Boundaries with neighboring specialties
- Coordinate with `security-review` when the problem materially crosses that boundary; do not duplicate its full scope.
- Coordinate with `performance-audit` when the problem materially crosses that boundary; do not duplicate its full scope.
- Coordinate with `deployment-readiness` when the problem materially crosses that boundary; do not duplicate its full scope.
- Coordinate with `technology-skill-router` when the problem materially crosses that boundary; do not duplicate its full scope.

## Questions a professional asks before acting
- What event starts the workflow and can it be delivered more than once?
- Which system is the source of truth?
- What side effects are reversible or compensatable?
- What happens after partial success?
- What permission does each connector really need?
- How are rate limits, retries and dead letters handled?
- Where is human approval required?

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
- platform execution histories and webhook logs
- API/provider docs and schema samples
- idempotency/replay tests
- queue/dead-letter/reconciliation mechanisms
- audit logs and credential scopes

Prefer project-native tools first. Add a new dependency/tool only when it provides material evidence or repeatable value.

## Decision framework

When several solutions can work, compare them on: correctness, compatibility, security/privacy, reliability, maintainability, performance/cost, operational burden, reversibility, migration impact, and project scale. Explicitly reject an inferior option when evidence makes the difference material; do not argue over equivalent stylistic choices.

## Common failure modes to actively look for
- duplicate side effects on retry
- automation account with administrator privileges
- no reconciliation after partial failure
- workflow logic hidden in undocumented UI nodes
- infinite retry loops
- assuming connector UI behavior is stable across versions

### Skill-specific prohibitions already defined
- assume simulator results equal physical-device behavior
- make irreversible financial/physical/device actions without authorization
- store keys/secrets insecurely

## Verification and professional deliverable

Use the V5 evidence ladder. A professional deliverable should contain the result/implementation, the evidence that supports it, the verification actually run, material trade-offs, unresolved risk, and a precise manual handoff when access or human judgment is required.

Expected domain deliverables include:
- specialist architecture/findings
- platform/hardware test plan
- security/performance/reliability constraints

## Progressive-disclosure references

Read only when needed:

- `~/.codex-engineering-system/v5/skill-library/shared-references/FIELD_AUTOMATION_ENTERPRISE.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/PROFESSIONAL_REASONING.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/EVIDENCE_AND_VERIFICATION.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/VERSION_COMPATIBILITY.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/MANUAL_HANDOFF.md` when a user action boundary is reached
