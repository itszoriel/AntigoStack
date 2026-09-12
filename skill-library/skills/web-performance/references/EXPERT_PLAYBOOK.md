# Expert Playbook — `web-performance`

## Professional stance

Measure, diagnose and improve real web performance across network/server latency, JavaScript/main-thread work, rendering/layout, media/fonts, memory and third parties without breaking correctness or accessibility.

A strong practitioner starts from the actual user/system outcome and evidence, not from a favorite tool, checklist score, or the wording of the initial diagnosis.

## Broad-to-specific knowledge map

### Field-level mental models
- user-perceived journey latency over generic benchmark scores
- lab, field/RUM and production traces are different evidence types
- backend/TTFB, transfer, main-thread, layout/render and third-party bottlenecks require different fixes
- performance budgets should match target devices/networks and product goals
- caching/optimization can trade freshness or correctness for speed
- before/after measurement is required to claim improvement

### Skill-specific operating scope
- define slow journey, representative device/network and target metric
- capture baseline waterfall, main-thread/render trace and relevant server/APM evidence
- identify dominant bottleneck before changing code
- inspect bundle/dependency/media/font/third-party contribution
- apply the smallest high-impact optimization preserving correctness/accessibility/SEO
- repeat measurements under comparable conditions and watch regressions
- separate lab improvement from field/production evidence

### Boundaries with neighboring specialties
- Coordinate with `web-production` when the problem materially crosses that boundary; do not duplicate its full scope.
- Coordinate with `frontend-production` when the problem materially crosses that boundary; do not duplicate its full scope.
- Coordinate with `observability` when the problem materially crosses that boundary; do not duplicate its full scope.
- Coordinate with `web-launch-readiness` when the problem materially crosses that boundary; do not duplicate its full scope.

## Questions a professional asks before acting
- Which user action is slow and how is it measured?
- Is delay server, network, JS execution, layout/paint, media/font or third-party dominated?
- Does field/RUM evidence agree with lab reproduction?
- What is on the critical rendering or interaction path?
- Could caching/code splitting/lazy loading alter freshness, hydration or accessibility?
- What before/after measurement proves the change matters?

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
- browser Performance/Network/Memory panels
- Lighthouse/Web Vitals as supporting evidence
- bundle analyzers/coverage
- APM/server traces
- RUM/field data when available
- throttled representative-device testing

Prefer project-native tools first. Add dependencies only when they materially improve repeatable evidence or implementation quality.

## Decision framework

Compare viable solutions on correctness, compatibility, accessibility/security/privacy as relevant, maintainability, performance/cost, operational burden, reversibility and project scale. Reject a materially inferior option with reasons; do not argue over equivalent stylistic preferences.

## Common failure modes to actively look for
- optimizing score rather than observed bottleneck
- lazy-loading critical content blindly
- large bundle caused by broad imports/dependencies
- layout shift from media/font sizing
- cache serves stale/private content
- removing functionality/accessibility to gain benchmark points

### Skill-specific prohibitions
- Do not claim performance gains without comparable before/after evidence.
- Do not remove required functionality or accessibility merely to improve a score.

## Verification and professional deliverable

Use the V5 evidence language and verification ladder. State what was actually tested, what was inferred, and what remains external/manual.

Expected domain deliverables include:
- baseline and bottleneck evidence
- prioritized optimizations
- before/after measurements
- remaining field/production uncertainty

## Progressive-disclosure references

Read only when needed:
- `~/.codex-engineering-system/v5/skill-library/shared-references/FIELD_WEB_PERFORMANCE.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/PROFESSIONAL_REASONING.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/EVIDENCE_AND_VERIFICATION.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/VERSION_COMPATIBILITY.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/MANUAL_HANDOFF.md` when a user action boundary is reached
