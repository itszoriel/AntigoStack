# Expert Playbook — `localization-i18n`

## Professional stance

Design and review internationalization/localization so text, formats, pluralization, directionality, locale fallback and culturally sensitive content work across intended locales without corrupting stable data.

A strong practitioner starts from the actual user/system outcome and evidence, not from a favorite tool, checklist score, or the wording of the initial diagnosis.

## Broad-to-specific knowledge map

### Field-level mental models
- locale includes language/script/region conventions, not only translation
- stable identifiers/data should be separate from localized presentation
- CLDR/ICU plural/date/number/currency rules beat handcrafted formatting
- text expansion, fonts/glyph coverage and RTL/bidirectional behavior are layout concerns
- time zone and locale are distinct
- machine translation can draft but consequential content needs appropriate human review

### Skill-specific operating scope
- inventory supported locales/scripts/regions and fallback behavior
- inspect message extraction/storage/key strategy and interpolation/plural handling
- use platform locale APIs for dates, numbers, currency and relative time
- test pseudo-localization, missing keys, expansion and RTL/bidi where relevant
- verify fonts/glyphs, truncation, layout and sorting/collation
- review locale routing/URLs/metadata/search behavior for localized web content
- identify content requiring native-speaker/domain/legal review

### Boundaries with neighboring specialties
- Coordinate with `frontend-production` when the problem materially crosses that boundary; do not duplicate its full scope.
- Coordinate with `mobile-production` when the problem materially crosses that boundary; do not duplicate its full scope.
- Coordinate with `seo-review` when the problem materially crosses that boundary; do not duplicate its full scope.
- Coordinate with `accessibility-review` when the problem materially crosses that boundary; do not duplicate its full scope.

## Questions a professional asks before acting
- Which locales/scripts/regions are truly supported?
- What is the fallback chain when a translation is missing?
- Are plural/date/number/currency rules delegated to locale-aware libraries?
- Does layout survive 30–100% text expansion and RTL?
- Are time zone and locale handled separately?
- Which strings are too consequential for unreviewed machine translation?

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
- Unicode CLDR/ICU references and platform locale APIs
- W3C Internationalization guidance
- pseudo-localization and missing-key tests
- RTL/bidi layout checks
- font/glyph coverage inspection
- locale-specific unit tests

Prefer project-native tools first. Add dependencies only when they materially improve repeatable evidence or implementation quality.

## Decision framework

Compare viable solutions on correctness, compatibility, accessibility/security/privacy as relevant, maintainability, performance/cost, operational burden, reversibility and project scale. Reject a materially inferior option with reasons; do not argue over equivalent stylistic preferences.

## Common failure modes to actively look for
- concatenating translated fragments into grammatically broken sentences
- hardcoded date/number/currency formats
- using language code when region/script matters
- translating stable identifiers or protocol values
- layout assumes English width/LTR
- silent fallback to wrong locale for important content

### Skill-specific prohibitions
- Do not claim translation quality without appropriate review.
- Do not change stable identifiers/database values merely for localization.

## Verification and professional deliverable

Use the V5 evidence language and verification ladder. State what was actually tested, what was inferred, and what remains external/manual.

Expected domain deliverables include:
- locale architecture and fallback plan
- translation/key quality findings
- formatting/RTL/pseudo-localization test results
- manual translation-review items

## Progressive-disclosure references

Read only when needed:
- `~/.codex-engineering-system/v5/skill-library/shared-references/FIELD_LOCALIZATION_I18N.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/PROFESSIONAL_REASONING.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/EVIDENCE_AND_VERIFICATION.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/VERSION_COMPATIBILITY.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/MANUAL_HANDOFF.md` when a user action boundary is reached
