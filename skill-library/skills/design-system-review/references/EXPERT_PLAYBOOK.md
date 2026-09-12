# Expert Playbook — `design-system-review`

## Professional stance

Review or design a UI component system for consistency, tokens, variants, states, accessibility, responsiveness, theming, documentation, and maintainability.

A strong practitioner starts from the actual outcome and evidence rather than immediately applying a favorite tool or pattern. The job is to reach a defensible result with the least unnecessary complexity.

## Broad-to-specific knowledge map

### Field-level mental models
- user/task/visual goal before tooling
- hierarchy, readability, affordance and accessibility
- non-destructive editable source and export targets
- units/scale/color-space/format consistency
- asset budgets and downstream pipeline constraints
- licensing/provenance and factual integrity
- review on target device/context

### Skill-specific operating scope
The existing required workflow defines the concrete task sequence. Treat these as checkpoints rather than blind steps:
- Inventory typography, spacing, color, elevation, motion, icons, and breakpoints.
- Identify semantic tokens and duplicated literal values.
- Inventory components/variants and all interaction states.
- Check semantics, keyboard behavior, focus, names, errors, and responsiveness.
- Check localization pressure, themes, API consistency, and documentation.
- Propose incremental consolidation rather than unnecessary rewrite.

### Boundaries with neighboring specialties
- Coordinate with `frontend-production` when the problem materially crosses that boundary; do not duplicate its full scope.
- Coordinate with `accessibility-review` when the problem materially crosses that boundary; do not duplicate its full scope.
- Coordinate with `visual-design-canva` when the problem materially crosses that boundary; do not duplicate its full scope.

## Questions a professional asks before acting
- What user/task or visual requirement is this asset solving?
- What is the target resolution/device/engine/print/export format?
- Which properties must remain editable or parametric?
- Are scale, transforms, UVs, color space and naming consistent?
- What accessibility/licensing constraints apply?
- How will the exported result be validated in the actual destination?

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
- design/DCC native inspection tools
- target-engine/import preview
- contrast/accessibility checks where relevant
- texture/mesh/codec/format validators
- asset naming/version control and licensing records

Prefer project-native tools first. Add a new dependency/tool only when it provides material evidence or repeatable value.

## Decision framework

When several solutions can work, compare them on: correctness, compatibility, security/privacy, reliability, maintainability, performance/cost, operational burden, reversibility, migration impact, and project scale. Explicitly reject an inferior option when evidence makes the difference material; do not argue over equivalent stylistic choices.

## Common failure modes to actively look for
- beautiful source file that breaks downstream import
- unlicensed assets used because they are downloadable
- wrong scale/color space/transforms
- visual polish before interaction hierarchy
- export settings not tested in target platform
- accessibility treated as an afterthought

### Skill-specific prohibitions already defined
- Do not rewrite brand identity without requirement.
- Do not create components with no demonstrated reuse.
- Do not claim tests, scans, security, compliance, performance, or production readiness without evidence.

## Verification and professional deliverable

Use the V5 evidence ladder. A professional deliverable should contain the result/implementation, the evidence that supports it, the verification actually run, material trade-offs, unresolved risk, and a precise manual handoff when access or human judgment is required.

Expected domain deliverables include:
- component/token inventory
- consistency/accessibility findings
- API recommendations
- migration plan

## Progressive-disclosure references

Read only when needed:

- `~/.codex-engineering-system/v5/skill-library/shared-references/FIELD_ACCESSIBILITY.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/FIELD_CREATIVE_DESIGN.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/PROFESSIONAL_REASONING.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/EVIDENCE_AND_VERIFICATION.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/VERSION_COMPATIBILITY.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/MANUAL_HANDOFF.md` when a user action boundary is reached
