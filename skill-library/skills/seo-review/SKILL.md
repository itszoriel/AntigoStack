---
name: seo-review
description: "Evidence-based technical/on-page SEO review covering crawlability, indexability, rendered metadata, canonicalization, structured data, internal linking, sitemaps, robots, favicons, public assets, and deployed runtime verification."
---

# seo-review

## Purpose

Improve legitimate search discoverability while distinguishing source configuration, deployed technical eligibility, and search-engine processing.

## Required Workflow

1. Identify production hostname/origin, site type, framework/build system, routing/base path, canonical domain and deployment provider.
2. Inspect source configuration for titles/descriptions, canonical, index/noindex, headings, structured data, social metadata, favicon, robots and sitemap.
3. Inspect production build/rendered HTML where the framework transforms metadata/assets.
4. Verify important public URLs on the deployed origin rather than marking source presence as PASS.
5. Check redirects, canonical consistency, indexability, internal links, duplicate/thin content and accidental staging URLs.
6. Validate structured data for truthfulness and supported search features; never fabricate claims.
7. Verify robots.txt and sitemap.xml as deployed resources including status/content/host correctness.
8. Verify favicon using current Search Central requirements and the exact rendered `rel=icon` URL; check actual image response rather than HTML fallback.
9. Verify Open Graph/social images, manifest icons, verification files and other crawlable assets when relevant.
10. Report technical eligibility separately from crawler recrawl/indexing/ranking/display outcomes outside the site's direct control.

## Favicon Verification

At minimum: rendered homepage declaration → resolved public URL → successful asset response → actual supported image, not SPA/HTML fallback → crawlability → stable URL → square dimensions and current Search Central size/format requirements. Do not require repository-root placement; public URL behavior is what matters.

## Evidence Levels

Use SOURCE / BUILD / LOCAL RUNTIME / DEPLOYED / EXTERNAL-OBSERVABLE as applicable. If no production URL/access is available, say `NOT VERIFIED` instead of `PASS`.

## Must Not

- keyword stuff or fabricate structured-data/business claims
- promise rankings, indexing speed, or favicon display
- assume a file in `src/`, `public/`, or repository root is deployed correctly
- accept HTTP 200 without checking the resource content

## Expected Outputs

- prioritized SEO findings and indexability blockers
- source/build/deployed evidence for critical public resources
- exact fixes and re-test steps
- external processing items that remain outside direct control

## Related Skills

- `web-runtime-verification`
- `web-launch-readiness`
- `web-performance`
- `accessibility-review`
- `content-legal-readiness`

## V5 Professional Standard

Read `references/EXPERT_PLAYBOOK.md` and the shared `WEB_RUNTIME_VERIFICATION.md`. Current official Search Central guidance overrides stale assumptions.
