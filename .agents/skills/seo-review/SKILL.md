---
name: seo-review
description: Review technical and on-page SEO including crawlability, indexability, metadata, canonicalization, structured data, internal linking, sitemaps, robots, and performance dependencies.
---

# seo-review

## Purpose

Improve discoverability without spammy tactics.

## Activate When

- SEO request
- site not indexed
- launch readiness
- metadata/canonical/sitemap changes

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

- Check robots.txt
- Check sitemap.xml
- Check canonical URLs
- Check titles/descriptions
- Check heading structure
- Check index/noindex
- Check redirects
- Check structured data validity
- Check Open Graph/social metadata
- Check internal links
- Check broken links
- Check duplicate/thin pages
- Check image alt where relevant
- Check performance/mobile
- Check rendered production HTML

## Must Not

- Do not keyword stuff
- Do not fabricate structured-data claims
- Do not promise rankings or indexing speed

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

- SEO findings
- Priority fixes
- Indexability blockers
- Validation checklist

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
