# Expert Playbook — `pwa-production`

## Professional stance

Build and review Progressive Web App behavior across installability, web app manifest, service workers, caching/update lifecycle, offline/poor-network UX, storage and platform limitations.

A strong practitioner starts from the actual user/system outcome and evidence, not from a favorite tool, checklist score, or the wording of the initial diagnosis.

## Broad-to-specific knowledge map

### Field-level mental models
- PWA is a set of web capabilities, not a guarantee of identical native behavior on every platform
- service worker scope/lifecycle and cache versioning determine update behavior
- offline-first, network-first, cache-first and stale-while-revalidate have different correctness/freshness trade-offs
- installability and manifest behavior vary by browser/platform/version
- offline UX needs explicit stale/error/sync semantics
- storage eviction and background execution are not guaranteed

### Skill-specific operating scope
- detect target browsers/platforms, manifest and service-worker implementation
- map network requests into correctness-sensitive versus cacheable resources
- review service-worker registration, scope, install/activate/update and cache cleanup
- test first load, repeat load, offline, flaky network, update and stale-cache scenarios
- verify manifest/icons/start_url/display/scope on deployed origin
- review background sync/push/storage behavior against platform support and permissions
- provide fallback behavior where capability is unavailable

### Boundaries with neighboring specialties
- Coordinate with `web-production` when the problem materially crosses that boundary; do not duplicate its full scope.
- Coordinate with `offline-sync` when the problem materially crosses that boundary; do not duplicate its full scope.
- Coordinate with `web-runtime-verification` when the problem materially crosses that boundary; do not duplicate its full scope.
- Coordinate with `mobile-production` when the problem materially crosses that boundary; do not duplicate its full scope.

## Questions a professional asks before acting
- What must work offline versus merely degrade gracefully?
- Which responses can be cached without serving stale/private data?
- How does a new deployment invalidate old caches safely?
- What happens when service worker install/activation fails?
- Which target browser/platform limitations affect install, push, background sync or storage?
- How will the user know data is stale or pending sync?

Add task-specific questions derived from the actual repository, users, runtime/deployment, provider behavior and observed failure before choosing an implementation.

## Investigation and diagnostic method

1. Define the desired outcome and strongest success criterion.
2. Inspect the actual source/configuration and current version/toolchain.
3. Observe rendered/runtime/deployed behavior when the problem can differ from source.
4. Form competing explanations instead of locking onto the user's first diagnosis.
5. Use the cheapest reliable observation to eliminate weak hypotheses.
6. Choose the smallest complete, compatible and reversible solution.
7. Implement without mixing unrelated cleanup.
8. Re-run the original scenario plus important regression/edge checks.
9. Report the evidence level reached, residual risk and any manual/external verification still required.

## Tooling and evidence
- browser Application/Service Worker/Cache Storage panels
- network throttling/offline simulation
- deployed manifest/icon verification
- MDN and relevant web standards
- browser/platform installability docs
- E2E tests for offline/update paths where valuable

Prefer project-native tools first. Add dependencies only when they materially improve repeatable evidence or implementation quality.

## Decision framework

Compare viable solutions on correctness, compatibility, accessibility/security/privacy as relevant, maintainability, performance/cost, operational burden, reversibility and project scale. Reject a materially inferior option with reasons; do not argue over equivalent stylistic preferences.

## Common failure modes to actively look for
- cache-first applied to authenticated/private/dynamic data blindly
- old service worker/cache prevents new deployment from appearing
- offline UI claims a write succeeded before durable sync
- manifest/icon works locally but not at deployed path
- assuming all mobile browsers expose the same PWA features
- unbounded cache growth

### Skill-specific prohibitions
- Do not trade correctness or privacy for an offline score.
- Do not assume installability/background behavior without target-platform verification.

## Verification and professional deliverable

Use the V5 evidence language and verification ladder. State what was actually tested, what was inferred, and what remains external/manual.

Expected domain deliverables include:
- PWA lifecycle/cache strategy
- offline/update failure-mode findings
- deployed manifest/service-worker verification
- platform limitations and fallback plan

## Progressive-disclosure references

Read only when needed:
- `~/.codex-engineering-system/v5/skill-library/shared-references/FIELD_WEB_API.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/FIELD_WEB_RUNTIME.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/PROFESSIONAL_REASONING.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/EVIDENCE_AND_VERIFICATION.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/VERSION_COMPATIBILITY.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/MANUAL_HANDOFF.md` when a user action boundary is reached
