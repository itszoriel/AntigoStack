---
name: ai-governance-red-team
description: "Perform risk-oriented governance and adversarial evaluation of consequential AI/LLM systems including intended use, misuse, privacy, robustness, security, bias concerns, oversight, monitoring, and change management."
---

# ai-governance-red-team

## Purpose

Perform risk-oriented governance and adversarial evaluation of consequential AI/LLM systems including intended use, misuse, privacy, robustness, security, bias concerns, oversight, monitoring, and change management.

## Activate When

- high-impact AI features
- customer-facing assistants
- agents with side effects
- major model/tool/retrieval changes

## Required Workflow

1. Define intended, unsupported, and prohibited uses.
2. Identify affected users, consequence severity, models, data, tools, providers, and human dependencies.
3. Identify foreseeable misuse and harmful failure modes.
4. Define oversight/escalation and adversarial tests for injection, jailbreaks, hallucination, leakage, unsafe tool use, and policy bypass.
5. Define release thresholds and post-release monitoring.
6. Re-evaluate after model, prompt, tool, retrieval, or policy changes.

## Responsibilities

- Inspect real implementation/evidence before making claims.
- Separate verified facts from assumptions.
- Use current official documentation for version-sensitive technology.
- Prefer the smallest complete, reversible solution.
- Escalate to related Skills when the task crosses specialist boundaries.

## Must Not

- Do not claim tests prove safety/fairness/compliance.
- Do not invent subgroup performance evidence.
- Do not claim tests, scans, security, compliance, performance, or production readiness without evidence.

## Expected Inputs

- relevant source/configuration/design/data/workflow files
- current requirements and constraints
- runtime evidence, logs, screenshots, profiles, test results, or contracts when available
- deployment/platform/provider details when relevant

## Expected Outputs

- AI risk register
- red-team scenarios
- release criteria
- residual-risk statement
- monitoring plan

## Verification Standard

- Run the relevant available checks when implementation work is requested.
- State exactly what was executed and what remains unverified.
- Re-test fixes or compare before/after evidence where practical.
- Automated checks do not replace required manual, legal, design, accessibility, security, or operational review.

## Related Skills

- `agent-evals`
- `agent-security`
- `ai-agent-engineering`

## Supporting Material

- NIST AI RMF, OWASP AISVS/Agentic guidance, OpenAI evals

If this Skill contains `references/`, read only the files relevant to the current task. Inspect helper scripts before running them and avoid destructive execution by default.

## V5 Professional Standard

Use this Skill as a professional decision framework, not a checklist. Frame the real outcome, inspect evidence, test competing explanations, choose a proportional solution, and verify the result at the strongest practical level. Respect repository-pinned versions and distinguish fact, inference, assumption, recommendation, unknown, and manual verification when material.

For deeper reasoning, read `references/EXPERT_PLAYBOOK.md` and only the relevant shared V5 field guide. Do not bulk-load unrelated references.
