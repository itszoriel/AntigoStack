# Expert Playbook — `test-strategy`

## Professional stance

Design risk-based unit, integration, contract, E2E, security, accessibility, migration, performance, and release-gate testing.

A strong practitioner starts from the actual outcome and evidence rather than immediately applying a favorite tool or pattern. The job is to reach a defensible result with the least unnecessary complexity.

## Broad-to-specific knowledge map

### Field-level mental models
- goal/acceptance criteria versus proposed implementation
- system boundaries, invariants, state transitions, dependencies, and failure domains
- reproduction and observability before speculative fixes
- risk-based verification rather than test-count maximization
- change size, reversibility, blast radius, and maintainability

### Skill-specific operating scope
The existing required workflow defines the concrete task sequence. Treat these as checkpoints rather than blind steps:
- Identify critical user/business journeys and failure consequences.
- Map system/trust boundaries and dependencies.
- Choose the smallest effective layers: unit, component, integration, contract, E2E, security, accessibility, data/migration, performance/load, manual exploratory.
- Define test-data/environment isolation, negative/auth/failure coverage, and browser/device matrices.
- Add regression coverage for known defects.
- Define CI, scheduled, pre-release, and manual release gates.

### Boundaries with neighboring specialties
- Coordinate with `qa-automation` when the problem materially crosses that boundary; do not duplicate its full scope.
- Coordinate with `load-testing` when the problem materially crosses that boundary; do not duplicate its full scope.
- Coordinate with `security-review` when the problem materially crosses that boundary; do not duplicate its full scope.

## Questions a professional asks before acting
- What outcome or failure is being measured?
- What evidence can reproduce or falsify the current hypothesis?
- Which invariant or boundary is actually violated?
- What is the smallest change that removes the cause?
- What verification would catch a regression that the current checks miss?

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
- repository manifests and Git diff/status
- compiler/typechecker/linter/test runner
- logs, traces, debuggers, profilers and runtime inspection
- architecture/data-flow diagrams when complexity warrants them
- CI/build/package/deployment evidence

Prefer project-native tools first. Add a new dependency/tool only when it provides material evidence or repeatable value.

## Decision framework

When several solutions can work, compare them on: correctness, compatibility, security/privacy, reliability, maintainability, performance/cost, operational burden, reversibility, migration impact, and project scale. Explicitly reject an inferior option when evidence makes the difference material; do not argue over equivalent stylistic choices.

## Common failure modes to actively look for
- fixing symptoms without reproducing root cause
- large refactors mixed into bug fixes
- green tests that do not exercise the failed path
- overengineering small projects
- claiming completion from source inspection alone

### Skill-specific prohibitions already defined
- Do not optimize for coverage percentage alone.
- Do not replace all lower-level testing with E2E.
- Do not claim tests, scans, security, compliance, performance, or production readiness without evidence.

## Verification and professional deliverable

Use the V5 evidence ladder. A professional deliverable should contain the result/implementation, the evidence that supports it, the verification actually run, material trade-offs, unresolved risk, and a precise manual handoff when access or human judgment is required.

Expected domain deliverables include:
- risk-to-test matrix
- coverage map
- environment/test-data plan
- release gates

## Progressive-disclosure references

Read only when needed:

- `~/.codex-engineering-system/v5/skill-library/shared-references/FIELD_CORE_QUALITY.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/PROFESSIONAL_REASONING.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/EVIDENCE_AND_VERIFICATION.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/VERSION_COMPATIBILITY.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/MANUAL_HANDOFF.md` when a user action boundary is reached
