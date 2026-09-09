---
name: web-launch-readiness
description: Perform an evidence-based pre-launch gate for public websites and web applications covering security, privacy, legal/content, accessibility, SEO, performance, responsive UX, forms, analytics, third parties, reliability, deployment, monitoring, and recovery.
---

# web-launch-readiness

## Purpose

Perform an evidence-based pre-launch gate for public websites and web applications covering security, privacy, legal/content, accessibility, SEO, performance, responsive UX, forms, analytics, third parties, reliability, deployment, monitoring, and recovery.

## Activate When

- before public website launch
- major redesign/relaunch
- production domain migration
- commercial landing pages

## Required Workflow

1. Discover site type, audience, auth, payments, forms, tracking, embeds, and deployment architecture.
2. Check HTTPS, mixed content, client-exposed secrets, auth/authz, validation/uploads, headers, abuse/spam/rate limits.
3. Check privacy/data minimization, cookies/consent/tracking/SDKs and disclosure consistency.
4. Check WCAG-oriented semantics, keyboard/focus, labels, contrast, alt text, zoom/reflow, and manual needs.
5. Check responsive layouts/browsers, SEO metadata/canonical/social preview/favicon/sitemap/robots/structured data/crawlability.
6. Check broken routes/404/errors/loading/forms/CTA, images/fonts/scripts/Core Web Vitals, analytics configuration, fake/unsupported claims, copyright/licensing, real business details, production env, DNS/TLS/CORS, monitoring, backups, smoke tests, and rollback.
7. Return CRITICAL/HIGH/MEDIUM/LOW plus GO / CONDITIONAL GO / NO-GO.

## Responsibilities

- Inspect real implementation/evidence before making claims.
- Separate verified facts from assumptions.
- Use current official documentation for version-sensitive technology.
- Prefer the smallest complete, reversible solution.
- Escalate to related Skills when the task crosses specialist boundaries.

## Must Not

- Do not mark GO with known critical blockers.
- Do not fabricate policies, reviews, business facts, or compliance claims.
- Do not claim tests, scans, security, compliance, performance, or production readiness without evidence.

## Expected Inputs

- relevant source/configuration/design/data/workflow files
- current requirements and constraints
- runtime evidence, logs, screenshots, profiles, test results, or contracts when available
- deployment/platform/provider details when relevant

## Expected Outputs

- launch scorecard
- severity findings
- checks actually run
- manual/legal review items
- GO/CONDITIONAL GO/NO-GO

## Verification Standard

- Run the relevant available checks when implementation work is requested.
- State exactly what was executed and what remains unverified.
- Re-test fixes or compare before/after evidence where practical.
- Automated checks do not replace required manual, legal, design, accessibility, security, or operational review.

## Related Skills

- `security-review`
- `privacy-compliance-review`
- `content-legal-readiness`
- `accessibility-review`
- `seo-review`
- `web-performance`

## Supporting Material

- WCAG 2.2, Google Search Central, Core Web Vitals, OWASP, FTC/WIPO

If this Skill contains `references/`, read only the files relevant to the current task. Inspect helper scripts before running them and avoid destructive execution by default.
