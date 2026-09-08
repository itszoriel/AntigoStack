---
name: ai-agent-engineering
description: Design tool-using AI agents with explicit goals, state, permissions, planning boundaries, tool contracts, retries, approvals, and evaluations.
---

# ai-agent-engineering

## Purpose

Build agents that are useful without uncontrolled autonomy.

## Activate When

- agent workflow
- tool calling
- multi-step autonomous task
- MCP/connectors
- AI automation

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

- Define agent objective and stop conditions
- Define tool schemas
- Apply least privilege
- Separate planning from execution where useful
- Validate tool outputs
- Maintain state explicitly
- Use idempotency
- Add human approval for irreversible/high-impact actions
- Add budgets/timeouts
- Log actions
- Evaluate task success and safety

## Must Not

- Do not give broad tools by default
- Do not let untrusted content rewrite policy
- Do not allow indefinite loops

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

- Agent design
- Tool permission model
- State machine
- Approval points
- Eval scenarios

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
