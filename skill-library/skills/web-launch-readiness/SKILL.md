---
name: web-launch-readiness
description: "Evidence-based pre-launch gate for public websites/apps covering security, privacy/legal/content, accessibility, SEO and deployed assets, performance, responsive UX, forms, analytics, third parties, deployment, monitoring, recovery, and rollback."
---

# web-launch-readiness

## Purpose

Decide whether a website/web app is ready for public use based on actual evidence, including deployed/runtime behavior—not repository checkboxes.

## Required Workflow

1. Discover site type, audience, critical journeys, auth/payments/forms/tracking/embeds, architecture, production hostname and deployment provider.
2. Security: HTTPS/mixed content, exposed secrets, auth/authz, validation/uploads, headers, abuse/spam/rate limits, third-party/supply-chain risk.
3. Privacy/content/legal: data minimization, cookies/tracking/SDKs, consent behavior, disclosure consistency, truthful claims, licensing, real business details only when applicable, jurisdiction-dependent manual review.
4. Accessibility: semantics, keyboard/focus, labels, contrast, alt text, zoom/reflow, errors, target sizes and manual/assistive-technology needs using current WCAG guidance.
5. Responsive/UX: representative viewport/device/browser behavior, loading/empty/error/offline states, navigation, forms, CTA and destructive actions.
6. SEO: rendered metadata/canonical/social/structured data plus favicon, robots and sitemap.
7. Runtime verification: for public assets/resources, validate SOURCE → BUILD → LOCAL RUNTIME → DEPLOYED → EXTERNAL-OBSERVABLE as far as access permits.
8. Performance: Core Web Vitals/runtime evidence, image/font/script/third-party weight, caching and critical-path behavior.
9. Operations: production env/DNS/TLS/CORS, logging/error tracking, monitoring, backups/recovery where persistent state exists, deployment smoke and rollback.
10. Return CRITICAL/HIGH/MEDIUM/LOW findings plus GO / CONDITIONAL GO / NO-GO with explicit unverified/manual items.

## Runtime Rule

Do not mark favicon, robots, sitemap, Open Graph image, manifest/icon, canonical/structured-data URL, verification file or public asset PASS only because it exists in source. Use `web-runtime-verification` for the deployed chain when material.

## Must Not

- mark GO with known critical blockers
- fabricate policy/business/legal/compliance facts
- add refund/cookie/business requirements blindly when not applicable
- claim production readiness from build success alone
- claim accessibility/security/compliance from automated scans alone

## Expected Outputs

- launch scorecard with evidence level
- prioritized severity findings
- checks actually executed
- deployed/public-resource verification
- manual/legal/accessibility/product review items
- GO / CONDITIONAL GO / NO-GO and explicit reasons

## Related Skills

- `web-runtime-verification`
- `security-review`
- `privacy-compliance-review`
- `content-legal-readiness`
- `accessibility-review`
- `seo-review`
- `web-performance`
- `deployment-readiness`

## V5 Professional Standard

Read `references/EXPERT_PLAYBOOK.md`, `references/LAUNCH_CHECKLIST.md`, and the shared runtime verification guide only as needed. Evidence outranks checklist completion.
