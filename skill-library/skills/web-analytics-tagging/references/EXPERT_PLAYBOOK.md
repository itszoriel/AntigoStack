# Expert Playbook — `web-analytics-tagging`

## Professional stance

Design and verify web analytics/tagging as a measurement system with explicit event contracts, deduplication, SPA behavior, consent/privacy boundaries and downstream reconciliation.

A strong practitioner starts from the actual user/system outcome and evidence, not from a favorite tool, checklist score, or the wording of the initial diagnosis.

## Broad-to-specific knowledge map

### Field-level mental models
- event collection is instrumentation, not automatically business truth
- event semantics include trigger, identity/session, properties, consent state and deduplication
- client telemetry can be blocked, duplicated, delayed, retried or manipulated
- collect only data needed for a defined decision/metric
- SPA routing and async UI can produce accidental duplicate or premature events
- provider dashboards may process/attribute data differently from raw events

### Skill-specific operating scope
- define measurement question, event names, trigger conditions and required properties
- inventory analytics/tag-manager SDKs, cookies/storage, consent integration and data flows
- instrument at stable business events rather than incidental renders/clicks where appropriate
- verify network/dataLayer/provider-debug payloads including SPA navigation and retry behavior
- test consent transitions and ensure disallowed tags/data do not fire when prohibited
- reconcile critical metrics against an independent source when feasible
- document account-console configuration that remains manual

### Boundaries with neighboring specialties
- Coordinate with `privacy-compliance-review` when the problem materially crosses that boundary; do not duplicate its full scope.
- Coordinate with `analytics-bi` when the problem materially crosses that boundary; do not duplicate its full scope.
- Coordinate with `web-launch-readiness` when the problem materially crosses that boundary; do not duplicate its full scope.

## Questions a professional asks before acting
- What decision/metric is this event meant to support?
- Exactly when should it fire and how is duplicate firing prevented?
- Which properties are necessary and could any contain PII/secrets?
- How do SPA navigation, reloads, blockers, offline behavior and consent changes affect it?
- What provider-side configuration is required but not present in code?
- Can totals be reconciled to server/database/business records?

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
- browser Network/Storage/DevTools
- dataLayer/provider debug views
- analytics/tag-manager official docs
- consent-state inspection
- event-contract tests when stable/valuable
- warehouse or source-system reconciliation when available

Prefer project-native tools first. Add dependencies only when they materially improve repeatable evidence or implementation quality.

## Decision framework

Compare viable solutions on correctness, compatibility, accessibility/security/privacy as relevant, maintainability, performance/cost, operational burden, reversibility and project scale. Reject a materially inferior option with reasons; do not argue over equivalent stylistic preferences.

## Common failure modes to actively look for
- pageview/action events fire twice in SPA
- event fires before action success
- PII/token/URL parameters leaked to analytics
- tags fire before required consent
- event taxonomy drifts across features
- provider dashboard treated as exact ground truth without known collection limitations

### Skill-specific prohibitions
- Do not collect unnecessary sensitive data.
- Do not claim consent/legal compliance solely from tag presence/absence.
- Do not claim downstream reporting is correct until provider ingestion/reporting is observed when material.

## Verification and professional deliverable

Use the V5 evidence language and verification ladder. State what was actually tested, what was inferred, and what remains external/manual.

Expected domain deliverables include:
- measurement/event contract
- implementation and privacy findings
- network/provider-debug verification
- manual provider-console steps and reconciliation notes

## Progressive-disclosure references

Read only when needed:
- `~/.codex-engineering-system/v5/skill-library/shared-references/FIELD_WEB_ANALYTICS.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/PROFESSIONAL_REASONING.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/EVIDENCE_AND_VERIFICATION.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/VERSION_COMPATIBILITY.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/MANUAL_HANDOFF.md` when a user action boundary is reached
