# Expert Playbook — `messaging-queues`

## Professional stance

Design and review reliable brokered messaging with RabbitMQ, Kafka, or similar systems including acknowledgements, retries, DLQs, ordering, partitions, backpressure, retention, and monitoring.

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
- Define required delivery semantics and producer confirmation.
- Define consumer acknowledgement/commit and idempotent side effects.
- Define bounded retry/backoff and DLQ behavior.
- Define ordering, partitions/keys, concurrency, and in-flight limits.
- Define retention/replay and monitor depth/lag, throughput, failures, and latency.
- Test crash/redelivery/duplicate and broker outage behavior.

### Boundaries with neighboring specialties
- Coordinate with `event-driven-architecture` when the problem materially crosses that boundary; do not duplicate its full scope.
- Coordinate with `observability` when the problem materially crosses that boundary; do not duplicate its full scope.
- Coordinate with `load-testing` when the problem materially crosses that boundary; do not duplicate its full scope.

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
- Do not retry poison messages forever.
- Do not ignore lag/backpressure.
- Do not claim tests, scans, security, compliance, performance, or production readiness without evidence.

## Verification and professional deliverable

Use the V5 evidence ladder. A professional deliverable should contain the result/implementation, the evidence that supports it, the verification actually run, material trade-offs, unresolved risk, and a precise manual handoff when access or human judgment is required.

Expected domain deliverables include:
- producer/consumer contract
- delivery semantics
- retry/DLQ policy
- capacity/monitoring plan

## Progressive-disclosure references

Read only when needed:

- `~/.codex-engineering-system/v5/skill-library/shared-references/FIELD_AUTOMATION_ENTERPRISE.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/PROFESSIONAL_REASONING.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/EVIDENCE_AND_VERIFICATION.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/VERSION_COMPATIBILITY.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/MANUAL_HANDOFF.md` when a user action boundary is reached
