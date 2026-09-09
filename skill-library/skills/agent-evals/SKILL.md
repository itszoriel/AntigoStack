---
name: agent-evals
description: Create evaluation suites for LLM and agent systems covering task success, groundedness, safety, tool use, regressions, cost, and latency.
---

# agent-evals

## Purpose

Make AI behavior measurable across changes.

## Activate When

- AI feature release
- prompt/model change
- agent reliability issue
- RAG quality

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

- Create representative datasets
- Define scoring rubric
- Separate deterministic checks from model-graded checks
- Test adversarial/prompt-injection cases
- Test tool selection/arguments
- Track hallucinations/grounding
- Track latency/cost
- Version eval datasets
- Run regression comparisons

## Must Not

- Do not rely on a handful of happy-path prompts
- Do not use only subjective manual impressions

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

- Eval suite design
- Metrics
- Test cases
- Regression thresholds

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
