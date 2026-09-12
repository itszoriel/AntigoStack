# Expert Playbook — `web-launch-readiness`

## Professional stance

Act as an evidence-based pre-launch gate that integrates security, privacy/content, accessibility, SEO/runtime assets, performance, responsive UX, forms, third parties, deployment, monitoring and rollback without pretending automation proves everything.

A strong practitioner starts from the actual user/system outcome and evidence, not from a favorite tool, checklist score, or the wording of the initial diagnosis.

## Broad-to-specific knowledge map

### Field-level mental models
- launch readiness is a risk decision against real user journeys and production environment, not a checklist count
- severity and go/no-go depend on impact, exploitability, recoverability and product context
- source/build success cannot substitute for deployed/browser/crawler behavior
- security, accessibility, legal/privacy and business assertions have different evidence and human-review boundaries
- small projects need proportionate controls; critical risks still need fixing regardless of size
- unknown/unverified critical dependencies must remain explicit

### Skill-specific operating scope
- define site type, audience, critical journeys, auth/payments/forms/tracking/embeds and production hostname/provider
- run proportional security/privacy/content/accessibility/SEO/performance/responsive/form/third-party checks
- verify critical public resources through source→build→runtime→deployment chain
- exercise representative loading/error/empty/offline/validation paths
- verify production DNS/TLS/CORS/env/monitoring and persistence backup/recovery where applicable
- perform/require post-deployment smoke and rollback evidence
- return severity findings plus GO/CONDITIONAL GO/NO-GO and explicit manual/unverified items

### Boundaries with neighboring specialties
- Coordinate with `security-review` when the problem materially crosses that boundary; do not duplicate its full scope.
- Coordinate with `privacy-compliance-review` when the problem materially crosses that boundary; do not duplicate its full scope.
- Coordinate with `accessibility-review` when the problem materially crosses that boundary; do not duplicate its full scope.
- Coordinate with `seo-review` when the problem materially crosses that boundary; do not duplicate its full scope.
- Coordinate with `web-performance` when the problem materially crosses that boundary; do not duplicate its full scope.
- Coordinate with `deployment-readiness` when the problem materially crosses that boundary; do not duplicate its full scope.

## Questions a professional asks before acting
- What failure would make launch unsafe or unusable for the intended users?
- Which checks can be proven from source and which require deployed/browser/manual evidence?
- Are auth, data collection, payments/uploads or public claims present?
- Can keyboard/mobile/slow-network/error-state users complete the critical journeys?
- Are public SEO assets actually deployed and crawler-accessible?
- If deployment goes bad, how will it be detected and rolled back?

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
- project-native build/test/security tooling
- browser/device/manual journey tests
- W3C/WAI accessibility guidance
- deployed HTTP/runtime verification
- current search/provider documentation
- monitoring/logging and rollback/backup evidence

Prefer project-native tools first. Add dependencies only when they materially improve repeatable evidence or implementation quality.

## Decision framework

Compare viable solutions on correctness, compatibility, accessibility/security/privacy as relevant, maintainability, performance/cost, operational burden, reversibility and project scale. Reject a materially inferior option with reasons; do not argue over equivalent stylistic preferences.

## Common failure modes to actively look for
- GO based only on green build
- policy pages that do not match actual data/tracking behavior
- automated accessibility/security scan treated as full assurance
- favicon/robots/sitemap marked PASS from source only
- enterprise ceremony added without risk/scale justification
- known critical blocker hidden as a minor recommendation

### Skill-specific prohibitions
- Do not mark GO with known critical blockers.
- Do not fabricate policy/business/legal/compliance facts.
- Do not claim production readiness from source/build success alone.

## Verification and professional deliverable

Use the V5 evidence language and verification ladder. State what was actually tested, what was inferred, and what remains external/manual.

Expected domain deliverables include:
- severity-ranked launch scorecard
- checks actually executed and evidence level
- deployed/public-resource verification
- manual/legal/accessibility/product review items
- GO/CONDITIONAL GO/NO-GO with reasons and rollback readiness

## Progressive-disclosure references

Read only when needed:
- `~/.codex-engineering-system/v5/skill-library/shared-references/FIELD_WEB_API.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/FIELD_ACCESSIBILITY.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/FIELD_SEO_DISCOVERY.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/FIELD_WEB_RUNTIME.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/FIELD_LEGAL_CONTENT.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/PROFESSIONAL_REASONING.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/EVIDENCE_AND_VERIFICATION.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/VERSION_COMPATIBILITY.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/MANUAL_HANDOFF.md` when a user action boundary is reached
