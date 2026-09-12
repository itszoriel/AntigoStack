# Expert Playbook — `open-source-contribution`

## Professional stance

Prepare high-quality contributions to external open-source projects by following project governance, contribution rules, licensing, tests, maintainers' scope, and review etiquette.

A strong practitioner starts from the actual outcome and evidence rather than immediately applying a favorite tool or pattern. The job is to reach a defensible result with the least unnecessary complexity.

## Broad-to-specific knowledge map

### Field-level mental models
- history as communication and rollback structure
- branch/PR strategy matched to team/project maturity
- local verification before remote execution when possible
- CI as deterministic evidence, not a deployment counter
- deployments as operational events; releases as versioned product milestones
- rulesets/permissions with least privilege
- artifact integrity, provenance and rollback

### Skill-specific operating scope
The existing required workflow defines the concrete task sequence. Treat these as checkpoints rather than blind steps:
- Read CONTRIBUTING, code of conduct, issue/PR templates, license, and local AGENTS instructions.
- Search existing issues/PRs before duplicating work.
- Reproduce the problem on supported versions.
- Keep the change narrowly scoped.
- Match project style and tests.
- Add regression tests/documentation when appropriate.
- Avoid mixing unrelated cleanup.
- Write a clear issue/PR explanation with reproduction and verification.
- Respond to maintainer feedback without rewriting project policy.

### Boundaries with neighboring specialties
- Coordinate with `code-review` when the problem materially crosses that boundary; do not duplicate its full scope.
- Coordinate with `documentation-engineering` when the problem materially crosses that boundary; do not duplicate its full scope.
- Coordinate with `git-github-engineering` when the problem materially crosses that boundary; do not duplicate its full scope.

## Questions a professional asks before acting
- What repository state and uncommitted work must be preserved?
- Does this change need a branch/PR or is the project still experimental?
- Can the failure be tested locally instead of pushing repeatedly?
- Which workflow/provider creates each deployment and why?
- Should obsolete runs be canceled or serialized?
- Does this change meet explicit release criteria or merely deploy?
- Can cleanup delete unique history or unreleased work?

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
- git status/log/diff/branch/reflog
- GitHub PR/check/ruleset/environment/deployment/release data
- workflow YAML and provider deployment configuration
- semantic version/tag/release-note tooling
- secret/dependency/supply-chain scanning

Prefer project-native tools first. Add a new dependency/tool only when it provides material evidence or repeatable value.

## Decision framework

When several solutions can work, compare them on: correctness, compatibility, security/privacy, reliability, maintainability, performance/cost, operational burden, reversibility, migration impact, and project scale. Explicitly reject an inferior option when evidence makes the difference material; do not argue over equivalent stylistic choices.

## Common failure modes to actively look for
- commit spam from agent iterations
- using push as a test runner when local checks exist
- 100 deployments caused by noisy trigger design
- creating releases just to make the count nonzero
- force-push/branch deletion without recovery evidence
- tags/releases drifting from deployed artifacts
- workflow concurrency groups canceling unrelated jobs

### Skill-specific prohibitions already defined
- claim maintainers approved something they did not
- submit AI-generated code without review
- ignore project license/contribution terms

## Verification and professional deliverable

Use the V5 evidence ladder. A professional deliverable should contain the result/implementation, the evidence that supports it, the verification actually run, material trade-offs, unresolved risk, and a precise manual handoff when access or human judgment is required.

Expected domain deliverables include:
- upstream-ready patch
- issue/PR draft
- test evidence
- compatibility notes

## Progressive-disclosure references

Read only when needed:

- `~/.codex-engineering-system/v5/skill-library/shared-references/FIELD_GIT_RELEASE.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/PROFESSIONAL_REASONING.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/EVIDENCE_AND_VERIFICATION.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/VERSION_COMPATIBILITY.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/MANUAL_HANDOFF.md` when a user action boundary is reached
