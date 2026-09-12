# Expert Playbook — `accessibility-review`

## Professional stance

Find and remediate accessibility barriers using WCAG-oriented evidence, native semantics, keyboard/focus behavior, forms, visual presentation, media/motion and assistive-technology behavior.

A strong practitioner starts from the actual user/system outcome and evidence, not from a favorite tool, checklist score, or the wording of the initial diagnosis.

## Broad-to-specific knowledge map

### Field-level mental models
- actual task completion by disabled users over scanner scores
- native semantic HTML/platform controls before ARIA
- keyboard operation and focus management as behavioral contracts
- accessible name/role/state/value must match visible intent
- reflow/zoom/contrast/motion/media are independent accessibility dimensions
- automation finds some defects; manual testing is required for many interaction barriers

### Skill-specific operating scope
- define target platform/pages/journeys and applicable accessibility target
- inspect rendered semantics/accessibility tree, not only JSX/templates
- walk critical flows with keyboard only and observe focus order/visibility/restoration
- inspect names, labels, instructions, errors, status messages and dynamic updates
- check contrast, non-color cues, zoom/reflow/text spacing/target size and reduced motion
- use automated scanners as supporting evidence and manually validate high-impact findings
- test representative assistive technology when available/required and state coverage honestly

### Boundaries with neighboring specialties
- Coordinate with `frontend-production` when the problem materially crosses that boundary; do not duplicate its full scope.
- Coordinate with `design-system-review` when the problem materially crosses that boundary; do not duplicate its full scope.
- Coordinate with `web-launch-readiness` when the problem materially crosses that boundary; do not duplicate its full scope.
- Coordinate with `mobile-production` when the problem materially crosses that boundary; do not duplicate its full scope.

## Questions a professional asks before acting
- What critical user task could fail without a mouse, vision, hearing, precise pointer control, or standard text size?
- Can native HTML/platform semantics solve this without custom ARIA?
- Where does focus move on open, close, error, route change and dynamic update?
- Does every interactive control have the correct accessible name, role, state and keyboard behavior?
- Does meaning survive zoom, reflow, forced colors/high contrast and reduced motion?
- Which findings are scanner-detected versus manually reproduced?

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
- W3C WCAG 2.2 and Understanding guidance
- WAI-ARIA specification and APG patterns
- browser accessibility tree/DevTools
- keyboard-only walkthrough and focus tracing
- axe/Lighthouse or project scanner as supporting evidence
- screen reader/manual AT checks when available and proportionate

Prefer project-native tools first. Add dependencies only when they materially improve repeatable evidence or implementation quality.

## Decision framework

Compare viable solutions on correctness, compatibility, accessibility/security/privacy as relevant, maintainability, performance/cost, operational burden, reversibility and project scale. Reject a materially inferior option with reasons; do not argue over equivalent stylistic preferences.

## Common failure modes to actively look for
- adding ARIA to a non-semantic custom control without implementing required keyboard behavior
- scanner passes treated as full compliance
- focus trapped/lost behind dialogs, menus or route changes
- visible labels that do not become correct accessible names
- fixing contrast while leaving keyboard/errors/reflow broken
- custom authentication, drag-only or gesture-only interactions without accessible alternatives

### Skill-specific prohibitions
- Do not claim full WCAG/accessibility compliance from automated checks alone.
- Do not add ARIA where native HTML provides the correct semantics/behavior.
- Do not hide a control from assistive technology merely to silence a scanner unless it is genuinely redundant/decorative.

## Verification and professional deliverable

Use the V5 evidence language and verification ladder. State what was actually tested, what was inferred, and what remains external/manual.

Expected domain deliverables include:
- findings by severity and affected user task
- WCAG-oriented rationale and evidence
- specific remediation with preferred native pattern
- manual/AT verification checklist and unverified scope

## Progressive-disclosure references

Read only when needed:
- `~/.codex-engineering-system/v5/skill-library/shared-references/FIELD_ACCESSIBILITY.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/PROFESSIONAL_REASONING.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/EVIDENCE_AND_VERIFICATION.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/VERSION_COMPATIBILITY.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/MANUAL_HANDOFF.md` when a user action boundary is reached
