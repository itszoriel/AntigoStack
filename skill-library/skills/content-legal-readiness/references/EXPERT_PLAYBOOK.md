# Expert Playbook — `content-legal-readiness`

## Professional stance

Triage public-facing content and product flows for policies, disclosures, copyright, testimonials, refunds, privacy, consent, business information, payments, and jurisdiction-dependent legal review.

A strong practitioner starts from the actual outcome and evidence rather than immediately applying a favorite tool or pattern. The job is to reach a defensible result with the least unnecessary complexity.

## Broad-to-specific knowledge map

### Field-level mental models
- actual product behavior before policy text
- truthful claims and evidence
- data inventory/purpose/minimization before notices/consent
- technical eligibility versus external-platform outcome
- manual accessibility/legal review where automation is insufficient
- deployed/rendered behavior rather than repository-only checks

### Skill-specific operating scope
The existing required workflow defines the concrete task sequence. Treat these as checkpoints rather than blind steps:
- Identify product type, audience, markets, and known jurisdictions.
- Inventory data, tracking, payments, UGC, advertising, and third parties.
- Identify potentially relevant privacy/terms/cookie/refund/acceptable-use disclosures.
- Compare implementation with existing policies.
- Flag unsupported reviews, claims, awards, certifications, endorsements, or affiliations.
- Inventory asset licensing/provenance and escalate jurisdiction-specific questions.

### Boundaries with neighboring specialties
- Coordinate with `privacy-compliance-review` when the problem materially crosses that boundary; do not duplicate its full scope.
- Coordinate with `web-launch-readiness` when the problem materially crosses that boundary; do not duplicate its full scope.
- Coordinate with `payments-commerce` when the problem materially crosses that boundary; do not duplicate its full scope.

## Questions a professional asks before acting
- What data/content/claim actually exists in production?
- What jurisdiction/platform requirements are known versus unknown?
- Does the policy describe real behavior?
- Can a crawler/user/assistive technology reach the deployed resource?
- What claim requires evidence or qualified review?
- What remains outside technical verification?

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
- rendered/deployed HTTP/browser inspection
- Google Search Central and search-console evidence
- W3C accessibility testing plus manual keyboard/AT review
- privacy/tracking inventory and network inspection
- structured-data/metadata validators

Prefer project-native tools first. Add a new dependency/tool only when it provides material evidence or repeatable value.

## Decision framework

When several solutions can work, compare them on: correctness, compatibility, security/privacy, reliability, maintainability, performance/cost, operational burden, reversibility, migration impact, and project scale. Explicitly reject an inferior option when evidence makes the difference material; do not argue over equivalent stylistic choices.

## Common failure modes to actively look for
- policy pages copied without matching implementation
- SEO files present in source but unavailable in production
- promising rankings/indexing
- automated accessibility scan treated as compliance
- fake reviews/unsupported claims
- cookie/consent assumptions applied blindly across jurisdictions

### Skill-specific prohibitions already defined
- Do not claim legal compliance.
- Do not invent policies, business details, or legal conclusions.
- Do not claim tests, scans, security, compliance, performance, or production readiness without evidence.

## Verification and professional deliverable

Use the V5 evidence ladder. A professional deliverable should contain the result/implementation, the evidence that supports it, the verification actually run, material trade-offs, unresolved risk, and a precise manual handoff when access or human judgment is required.

Expected domain deliverables include:
- implementation/disclosure matrix
- content-integrity and asset-rights findings
- missing-policy questions
- items requiring counsel

## Progressive-disclosure references

Read only when needed:

- `~/.codex-engineering-system/v5/skill-library/shared-references/FIELD_LEGAL_CONTENT.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/PROFESSIONAL_REASONING.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/EVIDENCE_AND_VERIFICATION.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/VERSION_COMPATIBILITY.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/MANUAL_HANDOFF.md` when a user action boundary is reached
