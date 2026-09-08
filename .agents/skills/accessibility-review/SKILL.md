---
name: accessibility-review
description: Perform a deep accessibility review using WCAG-oriented principles across semantics, keyboard navigation, focus, forms, contrast, media, motion, and assistive technology behavior.
---

# accessibility-review

## Purpose

Find barriers that automated scanners alone miss.

## Activate When

- accessibility audit
- WCAG
- public site launch
- form/dialog/navigation changes

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

- Check semantic structure/headings/landmarks
- Check labels and accessible names
- Check keyboard navigation
- Check focus order and visible focus
- Check dialogs/modals focus management
- Check contrast
- Check alt text and decorative images
- Check form errors and instructions
- Check ARIA usage
- Check reduced motion
- Check tables
- Check skip links where useful
- Check zoom/reflow
- Use automated checks plus manual review

## Must Not

- Do not treat automated scanner pass as full compliance
- Do not add ARIA where native HTML is better

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

- Findings by severity
- WCAG-related rationale
- Suggested remediation
- Manual test checklist

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
