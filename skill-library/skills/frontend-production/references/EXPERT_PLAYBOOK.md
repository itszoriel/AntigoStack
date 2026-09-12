# Expert Playbook — `frontend-production`

## Professional stance

Implement and review complex production web frontends for component boundaries, routing, server/client state, network behavior, forms, accessibility, error recovery, performance, and security boundaries.

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
- Map routes, layouts, feature boundaries, and state ownership.
- Separate server state from local UI state and avoid duplicated authority.
- Model loading, empty, stale, partial, offline, and error states.
- Validate forms for UX client-side but enforce trust server-side.
- Prevent client-visible secrets; review unsafe HTML/URLs and auth-driven UI.
- Review semantics, keyboard/focus, responsiveness, localization pressure, bundles, and browser behavior.

### Boundaries with neighboring specialties
- Coordinate with `web-production` when the problem materially crosses that boundary; do not duplicate its full scope.
- Coordinate with `web-performance` when the problem materially crosses that boundary; do not duplicate its full scope.
- Coordinate with `accessibility-review` when the problem materially crosses that boundary; do not duplicate its full scope.
- Coordinate with `qa-automation` when the problem materially crosses that boundary; do not duplicate its full scope.

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
- Do not put secrets in frontend env variables.
- Do not treat hidden buttons as authorization.
- Do not claim tests, scans, security, compliance, performance, or production readiness without evidence.

## Verification and professional deliverable

Use the V5 evidence ladder. A professional deliverable should contain the result/implementation, the evidence that supports it, the verification actually run, material trade-offs, unresolved risk, and a precise manual handoff when access or human judgment is required.

Expected domain deliverables include:
- frontend architecture findings
- state/data-flow findings
- accessibility/security/performance risks
- test recommendations

## Progressive-disclosure references

Read only when needed:

- `~/.codex-engineering-system/v5/skill-library/shared-references/FIELD_WEB_API.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/PROFESSIONAL_REASONING.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/EVIDENCE_AND_VERIFICATION.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/VERSION_COMPATIBILITY.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/MANUAL_HANDOFF.md` when a user action boundary is reached
