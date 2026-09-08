---
name: ai-agent-engineering
description: Design and review autonomous or semi-autonomous tool-using agents with explicit goals, state, tool contracts, permission boundaries, approvals, budgets, traces, recovery, and evaluations.
---

# ai-agent-engineering

## Purpose

Design and review autonomous or semi-autonomous tool-using agents with explicit goals, state, tool contracts, permission boundaries, approvals, budgets, traces, recovery, and evaluations.

## Activate When

- tool-using agents
- multi-step AI workflows
- browser/email/database agents

## Required Workflow

1. Decide whether an agent is required and define goal/stop/unsupported actions.
2. Minimize tool set and permissions; give tools precise schemas/errors.
3. Separate planning from trusted execution and add approval for consequential actions.
4. Bound loops, retries, spend, actions, time, and persisted state.
5. Design recovery after partial execution and trace tool/action sequences.
6. Build task-success, regression, and safety evals; pair with agent-security.

## Responsibilities

- Inspect real implementation/evidence before making claims.
- Separate verified facts from assumptions.
- Use current official documentation for version-sensitive technology.
- Prefer the smallest complete, reversible solution.
- Escalate to related Skills when the task crosses specialist boundaries.

## Must Not

- Do not grant broad tools by default.
- Do not let agents loop indefinitely or take high-impact actions without defined authority.
- Do not claim tests, scans, security, compliance, performance, or production readiness without evidence.

## Expected Inputs

- relevant source/configuration/design/data/workflow files
- current requirements and constraints
- runtime evidence, logs, screenshots, profiles, test results, or contracts when available
- deployment/platform/provider details when relevant

## Expected Outputs

- agent architecture
- tool permission matrix
- approval policy
- failure/recovery design
- eval plan

## Verification Standard

- Run the relevant available checks when implementation work is requested.
- State exactly what was executed and what remains unverified.
- Re-test fixes or compare before/after evidence where practical.
- Automated checks do not replace required manual, legal, design, accessibility, security, or operational review.

## Related Skills

- `agent-security`
- `agent-evals`
- `mcp-security`

## Supporting Material

- OpenAI agent/eval/approval docs and OWASP Agentic Security

If this Skill contains `references/`, read only the files relevant to the current task. Inspect helper scripts before running them and avoid destructive execution by default.
