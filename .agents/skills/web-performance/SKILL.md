---
name: web-performance
description: Profile and improve frontend performance and Core Web Vitals while preserving UX and correctness.
---

# web-performance

## Purpose

Improve real user experience rather than chasing synthetic scores.

## Activate When

- slow site
- Core Web Vitals
- large bundles
- launch readiness
- performance audit

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

- Measure before optimizing
- Review LCP/INP/CLS
- Inspect bundle size/code splitting
- Optimize images
- Review fonts
- Reduce render-blocking resources
- Review third-party scripts
- Review caching/CDN
- Avoid unnecessary hydration/client JS
- Review API waterfalls
- Preserve visual stability
- Re-measure

## Must Not

- Do not remove required functionality for score gains
- Do not lazy-load above-the-fold critical content blindly
- Do not optimize without evidence

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

- Measurements
- Bottlenecks
- Changes
- Before/after metrics
- Remaining limits

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
