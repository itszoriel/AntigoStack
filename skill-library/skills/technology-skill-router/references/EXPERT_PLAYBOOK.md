# Expert Playbook — `technology-skill-router`

## Professional stance

Route unfamiliar or multi-stack technology work. Inspect the project first, identify the actual stack, then load only relevant specialist Skills.

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
- Inspect the repository, manifests, extensions, build files, infrastructure files, assets, and documentation.
- Identify languages, runtimes, frameworks, databases, cloud/platform services, creative tools, and deployment targets actually present.
- Identify the job type: frontend, backend, mobile, data, AI, security, DevOps, game, creative, IT operations, enterprise, embedded, XR, or mixed.
- Select only the narrowest Skills needed for the current task.
- Prefer technology-specific Skills when implementation depends on language/framework semantics.
- Use general production/security/testing Skills for cross-cutting concerns.
- If a detected technology has no dedicated Skill, use the closest domain Skill plus current official documentation rather than pretending it is covered.

### Boundaries with neighboring specialties
- Coordinate with `repo-intake-audit` when the problem materially crosses that boundary; do not duplicate its full scope.
- Coordinate with `requirements-to-spec` when the problem materially crosses that boundary; do not duplicate its full scope.
- Coordinate with `architecture-review` when the problem materially crosses that boundary; do not duplicate its full scope.

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
- activate large numbers of unrelated Skills
- assume TypeScript/React/Python/Unity or any other familiar stack without inspecting the project
- treat file extension alone as proof of architecture

## Verification and professional deliverable

Use the V5 evidence ladder. A professional deliverable should contain the result/implementation, the evidence that supports it, the verification actually run, material trade-offs, unresolved risk, and a precise manual handoff when access or human judgment is required.

Expected domain deliverables include:
- detected technology map
- recommended 1–4 primary Skills
- optional supporting Skills
- uncovered technology requiring direct official-doc research

## Progressive-disclosure references

Read only when needed:

- `~/.codex-engineering-system/v5/skill-library/shared-references/FIELD_CORE_QUALITY.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/PROFESSIONAL_REASONING.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/EVIDENCE_AND_VERIFICATION.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/VERSION_COMPATIBILITY.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/MANUAL_HANDOFF.md` when a user action boundary is reached
