---
name: web-runtime-verification
description: "Verify that web resources and metadata work in the built and deployed site, not merely in source, including favicons, robots, sitemaps, social images, manifests, canonicals, structured-data URLs, verification files, redirects, and public assets."
---

# web-runtime-verification

## Purpose

Close the gap between repository correctness and real deployed behavior by verifying the complete source → build → runtime → deployed → external-observable chain.

## Activate When

- a public asset or SEO file exists in source but is missing/broken after deployment
- favicon, robots.txt, sitemap, Open Graph image, manifest/icon, canonical, structured-data URL, verification file, redirect, or downloadable asset is being audited
- a framework/bundler may rewrite, hash, relocate, or SPA-fallback a resource
- launch readiness needs production evidence

## Required Workflow

1. Identify the intended public resource and its source declaration.
2. Determine framework/bundler/base-path behavior and expected build output.
3. Inspect rendered production HTML/config when references are generated at runtime/build time.
4. Resolve the final public URL against the deployed origin.
5. Fetch the deployed URL and inspect status, redirects, content type, cache behavior, and body/file signature.
6. Reject HTML/SPA fallback responses that merely return HTTP 200 for a missing asset.
7. Check robots/crawler access and cross-origin restrictions where relevant.
8. Validate resource-specific requirements such as dimensions, format, schema, or canonical host.
9. Classify evidence as SOURCE / BUILD / LOCAL RUNTIME / DEPLOYED / EXTERNAL-OBSERVABLE.
10. Report external-provider processing separately; do not promise crawler adoption or display.

## Must Not

- mark a resource PASS solely because a file exists in the repository
- assume `src/assets/...` becomes the same public URL after bundling
- accept HTTP 200 without validating the returned content
- promise Google indexing, favicon display, social-cache refresh, or third-party processing time

## Expected Outputs

- resolved source/build/public path chain
- deployed request evidence
- PASS / FAIL / NOT VERIFIED for each level
- exact remediation and re-test steps
- external/manual follow-up when provider processing cannot be controlled

## Related Skills

- `seo-review`
- `web-launch-readiness`
- `web-production`
- `deployment-readiness`
- `dns-tls-http`

## Verification Standard

Prefer direct requests to the deployed origin and rendered production output. State explicitly when production access is unavailable.

## V5 Professional Standard

Use this Skill as a professional decision framework, not a checklist. Frame the real outcome, inspect evidence, test competing explanations, choose a proportional solution, and verify the result at the strongest practical level. Respect repository-pinned versions and distinguish fact, inference, assumption, recommendation, unknown, and manual verification when material.

For deeper reasoning, read `references/EXPERT_PLAYBOOK.md` and only the relevant shared V5 field guide. Do not bulk-load unrelated references.
