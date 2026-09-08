---
name: web-launch-readiness
description: Perform a comprehensive pre-launch gate for public websites and web applications covering legal/privacy readiness, security, accessibility, SEO, content integrity, performance, UX, analytics, forms, reliability, and deployment.
---

# web-launch-readiness

## Purpose

Determine whether a website is ready to launch and identify blockers.

## Activate When

- prepare site for launch
- production readiness
- public release
- go-live review

## Required Workflow

1. Read applicable AGENTS.md files and relevant project documentation.
2. Inspect the implementation and evidence before recommending changes.
3. Define the scope and risk of the task.
4. Perform the responsibilities below.
5. Separate verified facts from assumptions.
6. Prefer the smallest complete and reversible solution.
7. Run relevant verification.
8. Report unresolved risks and anything not tested.

## Responsibilities

- Check privacy policy and terms where appropriate
- Check refund/cookie policy where applicable
- Check secrets are not exposed client-side
- Check HTTPS/mixed content/security headers
- Check cookie consent/tracking behavior
- Check titles/descriptions/canonical/OG/Twitter metadata
- Check favicon/manifest/icons
- Check sitemap/robots/indexability
- Check alt text/semantic HTML
- Check image compression/responsive images
- Check Core Web Vitals/page speed
- Check color contrast/focus/keyboard basics
- Check mobile/tablet/desktop layouts
- Check custom 404 and important error states
- Check broken links/anchors/routes
- Check client+server form validation
- Check spam/abuse controls
- Check analytics and consent
- Check clear primary CTA
- Check third-party embeds
- Check copyright/licensing
- Flag fake reviews/testimonials
- Flag unsupported claims
- Check real business/contact details when applicable
- Check data minimization
- Check button labels/forms accessibility
- Check browser console/network errors
- Check production env/config/CORS
- Check monitoring/rollback/backup where relevant

## Must Not

- Do not invent legal text as guaranteed-valid law
- Do not claim legal compliance
- Do not fabricate testimonials, statistics, partners, awards, or business details
- Do not mark GO if critical blockers remain

## Expected Inputs

Depending on the task, use the relevant subset of:

- repository files and project documentation
- current Git diff/status
- logs, traces, screenshots, browser/network output
- database schema and migrations
- API contracts
- deployment configuration
- test results
- user-provided product/business requirements

If critical information is unavailable, state the limitation rather than inventing it.

## Expected Outputs

- Launch scorecard
- Critical/high/medium/low findings
- GO / CONDITIONAL GO / NO-GO recommendation
- Automated checks run
- Manual review items
- Launch checklist

## Severity Guidance

When reporting findings, use:

- **CRITICAL** — likely severe compromise, data loss, safety issue, or launch blocker
- **HIGH** — serious defect or exploitable weakness that should be fixed before production
- **MEDIUM** — meaningful reliability, security, maintainability, UX, or operational risk
- **LOW** — limited-risk improvement
- **INFO** — useful observation or optional improvement

Use severity only when it helps the task.

## Verification Standard

Do not claim success from code inspection alone when an executable check exists.

Use relevant checks such as:

- build / compile / typecheck
- lint / formatter
- unit / integration / end-to-end tests
- browser/device checks
- database validation
- security scanners
- performance tools
- accessibility tools
- smoke tests

State exactly what was run and what was not.

## Supporting Material

If this Skill contains a `references/` directory, read only the references relevant to the current task.
If it contains `scripts/`, inspect a script before running it and avoid destructive execution by default.
