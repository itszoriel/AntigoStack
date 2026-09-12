# Expert Playbook — `seo-review`

## Professional stance

Review technical and on-page search eligibility using deployed evidence across crawlability, indexability, canonicalization, rendering, structured data, internal linking, sitemaps, robots, favicons and other public resources.

A strong practitioner starts from the actual user/system outcome and evidence, not from a favorite tool, checklist score, or the wording of the initial diagnosis.

## Broad-to-specific knowledge map

### Field-level mental models
- crawlability, indexability, canonical selection, ranking and search-result presentation are different stages
- rendered/deployed output outranks repository assumptions
- URL signals should agree: redirects, canonical, sitemap, robots/noindex, internal links and hreflang
- structured data and metadata must truthfully describe real content
- technical eligibility never guarantees ranking, indexing speed, rich results or favicon display
- search behavior is volatile; current official search documentation outranks memory

### Skill-specific operating scope
- identify production hostname, canonical URL model, framework rendering mode and deployment provider
- inspect source plus rendered production HTML/headers for title, description, canonical, robots directives and structured data
- fetch deployed robots.txt, sitemap.xml, favicon and other critical public resources and validate content, not just status
- trace redirects and detect staging/duplicate/parameter URLs that conflict with canonical intent
- inspect internal links and discovery paths for important pages
- validate structured data against current supported feature requirements and visible truth
- separate technical fix from Search Console/recrawl/indexing/provider processing

### Boundaries with neighboring specialties
- Coordinate with `web-runtime-verification` when the problem materially crosses that boundary; do not duplicate its full scope.
- Coordinate with `web-launch-readiness` when the problem materially crosses that boundary; do not duplicate its full scope.
- Coordinate with `web-performance` when the problem materially crosses that boundary; do not duplicate its full scope.
- Coordinate with `content-legal-readiness` when the problem materially crosses that boundary; do not duplicate its full scope.

## Questions a professional asks before acting
- What exact production URL should be canonical for this page?
- Can Googlebot/search crawler fetch the homepage/page and required resource?
- What does production actually return before/after rendering?
- Do redirect, canonical, sitemap, robots/noindex and internal-link signals agree?
- Is structured data supported for this content and truthful?
- Is the observed issue discovery, crawl, render, indexing selection, ranking or search presentation?

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
- deployed HTTP/header/redirect inspection
- rendered browser DOM and network inspection
- Google Search Central current documentation
- Search Console/URL Inspection evidence when user access is available
- structured-data/schema validation
- server logs or crawl evidence when available

Prefer project-native tools first. Add dependencies only when they materially improve repeatable evidence or implementation quality.

## Decision framework

Compare viable solutions on correctness, compatibility, accessibility/security/privacy as relevant, maintainability, performance/cost, operational burden, reversibility and project scale. Reject a materially inferior option with reasons; do not argue over equivalent stylistic preferences.

## Common failure modes to actively look for
- repository favicon/sitemap exists but deployed URL is missing or HTML fallback
- canonical points to staging, redirecting or wrong-host URL
- robots/noindex unintentionally blocks intended pages
- duplicate URL signals conflict
- structured data describes claims/content not present on page
- promising ranking/indexing after a technical correction

### Skill-specific prohibitions
- Do not keyword stuff or fabricate business/review/structured-data claims.
- Do not promise rankings, recrawl timing, indexing, rich results or favicon display.
- Do not mark a public resource PASS solely from source presence or HTTP 200.

## Verification and professional deliverable

Use the V5 evidence language and verification ladder. State what was actually tested, what was inferred, and what remains external/manual.

Expected domain deliverables include:
- prioritized technical SEO findings
- source/build/deployed evidence for critical signals
- exact remediation and re-test steps
- external search-processing items explicitly separated

## Progressive-disclosure references

Read only when needed:
- `~/.codex-engineering-system/v5/skill-library/shared-references/FIELD_SEO_DISCOVERY.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/FIELD_WEB_RUNTIME.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/WEB_RUNTIME_VERIFICATION.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/PROFESSIONAL_REASONING.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/EVIDENCE_AND_VERIFICATION.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/VERSION_COMPATIBILITY.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/MANUAL_HANDOFF.md` when a user action boundary is reached
