# Technical SEO and Search Discovery — Professional Field Guide

## Core mental models
- crawlability, indexability, canonicalization, rendering, content quality and ranking are different stages
- source configuration is not deployed/search-observable behavior
- search eligibility is not a promise of indexing, ranking, rich-result appearance or favicon display
- canonical, robots, sitemap, structured data, hreflang, redirects and internal links must agree on the intended URL model
- metadata/structured data must truthfully represent visible/real content
- framework rendering mode, JavaScript execution and deployment paths materially affect crawler-visible output

## Questions experienced practitioners ask
- Which hostname and URL should be canonical for this content?
- Can the relevant crawler fetch the homepage, target page and supporting resources?
- What HTML/headers does production actually return before and after rendering?
- Are robots/noindex/canonical/redirect/sitemap signals consistent?
- Does structured data describe real visible content and satisfy the current search feature documentation?
- Is the problem technical eligibility, crawler discovery/recrawl, indexing selection, ranking, or presentation?

## Diagnostic / implementation tools
- deployed HTTP requests and rendered browser HTML
- robots.txt/sitemap/canonical/redirect inspection
- Google Search Central and Search Console evidence when available
- structured-data validators and schema checks
- server logs/crawl diagnostics where available
- link graph/internal navigation inspection

## Common professional failure modes
- file exists in repo therefore crawler can access it
- HTTP 200 SPA fallback mistaken for favicon/sitemap/verification file
- canonical points to a redirect/staging/wrong-host URL
- robots blocks resources/pages required for intended discovery
- duplicate URLs compete because canonical/redirect/internal links disagree
- keyword stuffing or fabricated structured-data claims
- promising ranking/indexing timing after fixing technical eligibility

## Standard
Use current search-engine documentation for volatile behavior. Distinguish SOURCE, BUILD, LOCAL RUNTIME, DEPLOYED and EXTERNAL-OBSERVABLE evidence. Never promise an external search-system outcome.
