# Expert Playbook — `html-css-web-platform`

## Professional stance

HTML, CSS, SVG, responsive layout, semantics, browser compatibility, forms, modern CSS, and the standards-based web platform.

A strong practitioner starts from the actual outcome and evidence rather than immediately applying a favorite tool or pattern. The job is to reach a defensible result with the least unnecessary complexity.

## Broad-to-specific knowledge map

### Field-level mental models
- request/render/data lifecycle and server/client boundaries
- HTTP semantics, caching, validation, idempotency and failure behavior
- authentication/authorization and browser security boundaries
- accessibility and responsive interaction
- state synchronization, loading/error/empty/offline states
- performance budgets and third-party impact
- deployment/runtime differences from local development

### Skill-specific operating scope
The existing required workflow defines the concrete task sequence. Treat these as checkpoints rather than blind steps:
- Detect the exact language/runtime/compiler version from project files.
- Read formatter/linter/type-check/build configuration.
- Follow language idioms and ownership/error/concurrency model.
- Use standard library features before adding dependencies when reasonable.
- Review unsafe/dynamic/reflection/metaprogramming boundaries where relevant.
- Preserve interoperability and public API compatibility.
- Run the language's normal format, compile/type-check, tests, and build commands.
- Consult framework-specific Skills when the project uses a major framework.

### Boundaries with neighboring specialties
- Coordinate with `developer-environment-toolchains` when the problem materially crosses that boundary; do not duplicate its full scope.
- Coordinate with `test-strategy` when the problem materially crosses that boundary; do not duplicate its full scope.
- Coordinate with `dependency-security` when the problem materially crosses that boundary; do not duplicate its full scope.

## Questions a professional asks before acting
- Where does this code execute—server, browser, edge, worker, or build time?
- What is the source of truth for state and permissions?
- How does the system behave on slow, duplicated, reordered, or failed requests?
- What breaks with keyboard, small screens, hydration, caching, or stale state?
- What must be verified on the deployed origin rather than in source?

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
- browser DevTools/network/console/accessibility tree
- framework build/runtime diagnostics
- HTTP clients and contract/schema validators
- E2E browser automation
- Lighthouse/Web Vitals/security headers where relevant

Prefer project-native tools first. Add a new dependency/tool only when it provides material evidence or repeatable value.

## Decision framework

When several solutions can work, compare them on: correctness, compatibility, security/privacy, reliability, maintainability, performance/cost, operational burden, reversibility, migration impact, and project scale. Explicitly reject an inferior option when evidence makes the difference material; do not argue over equivalent stylistic choices.

## Common failure modes to actively look for
- client-only authorization
- source-path assumptions that fail after bundling/deployment
- missing server validation or idempotency
- hydration/cache/state race bugs
- ignoring accessibility/error states
- optimizing SEO metadata without checking rendered/deployed output

### Skill-specific prohibitions already defined
- rewrite a working stack merely because another language/framework is preferred
- ignore the repository's pinned compiler/runtime/framework version
- hide compile, type, lint, test, or runtime failures instead of fixing the cause
- add dependencies without a concrete need and maintenance/security consideration

## Verification and professional deliverable

Use the V5 evidence ladder. A professional deliverable should contain the result/implementation, the evidence that supports it, the verification actually run, material trade-offs, unresolved risk, and a precise manual handoff when access or human judgment is required.

Expected domain deliverables include:
- language-specific implementation/review
- toolchain/version notes
- verification results
- framework follow-up where applicable

## Progressive-disclosure references

Read only when needed:

- `~/.codex-engineering-system/v5/skill-library/shared-references/FIELD_WEB_API.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/PROFESSIONAL_REASONING.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/EVIDENCE_AND_VERIFICATION.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/VERSION_COMPATIBILITY.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/MANUAL_HANDOFF.md` when a user action boundary is reached
