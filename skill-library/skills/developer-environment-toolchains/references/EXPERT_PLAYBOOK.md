# Expert Playbook — `developer-environment-toolchains`

## Professional stance

Review SDKs, runtimes, compilers, package managers, IDE settings, linters, formatters, local services, and reproducible setup.

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
- Inventory required runtimes, SDKs, compilers, package managers, and native tools.
- Read version files, lockfiles, container/devcontainer configs, and CI versions.
- Make installation/version requirements explicit.
- Use project-local or version-managed dependencies where practical.
- Standardize formatter/linter/type-check settings.
- Document environment variables without exposing secrets.
- Align local and CI commands.
- Provide safe bootstrap and verification commands.
- Test setup from a clean or minimally configured environment where practical.

### Boundaries with neighboring specialties
- Coordinate with `documentation-engineering` when the problem materially crosses that boundary; do not duplicate its full scope.
- Coordinate with `ci-cd-review` when the problem materially crosses that boundary; do not duplicate its full scope.
- Coordinate with `monorepo-build-tooling` when the problem materially crosses that boundary; do not duplicate its full scope.

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
- require global installs unnecessarily
- overwrite user-wide configuration without request
- embed secrets into setup scripts

## Verification and professional deliverable

Use the V5 evidence ladder. A professional deliverable should contain the result/implementation, the evidence that supports it, the verification actually run, material trade-offs, unresolved risk, and a precise manual handoff when access or human judgment is required.

Expected domain deliverables include:
- toolchain inventory
- version matrix
- bootstrap instructions
- environment verification checklist

## Progressive-disclosure references

Read only when needed:

- `~/.codex-engineering-system/v5/skill-library/shared-references/FIELD_CORE_QUALITY.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/PROFESSIONAL_REASONING.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/EVIDENCE_AND_VERIFICATION.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/VERSION_COMPATIBILITY.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/MANUAL_HANDOFF.md` when a user action boundary is reached
