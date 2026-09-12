---
name: ai-app-engineering
description: "Design production LLM/AI features with clear task definitions, model selection, structured outputs, grounding, privacy, latency, cost, retries, fallbacks, observability, and evaluations."
---

# ai-app-engineering

## Purpose

Design production LLM/AI features with clear task definitions, model selection, structured outputs, grounding, privacy, latency, cost, retries, fallbacks, observability, and evaluations.

## Activate When

- LLM features
- classification/extraction/generation
- multimodal AI
- model selection/routing

## Required Workflow

1. Define the task and why AI is appropriate; keep deterministic logic deterministic.
2. Define output schema/failure behavior and minimize data sent to providers.
3. Validate structured output and treat generated content as untrusted.
4. Define grounding/citation needs, timeouts, retries, fallbacks, and provider failure.
5. Track model/prompt/retrieval versions and measure quality, cost, latency.
6. Add representative evals and human review for consequential use; regression-test model/provider changes.

## Responsibilities

- Inspect real implementation/evidence before making claims.
- Separate verified facts from assumptions.
- Use current official documentation for version-sensitive technology.
- Prefer the smallest complete, reversible solution.
- Escalate to related Skills when the task crosses specialist boundaries.

## Must Not

- Do not treat model output as ground truth.
- Do not send unnecessary secrets/PII.
- Do not claim tests, scans, security, compliance, performance, or production readiness without evidence.

## Expected Inputs

- relevant source/configuration/design/data/workflow files
- current requirements and constraints
- runtime evidence, logs, screenshots, profiles, test results, or contracts when available
- deployment/platform/provider details when relevant

## Expected Outputs

- AI architecture
- prompt/output contract
- privacy/security notes
- eval plan
- cost/latency/fallback strategy

## Verification Standard

- Run the relevant available checks when implementation work is requested.
- State exactly what was executed and what remains unverified.
- Re-test fixes or compare before/after evidence where practical.
- Automated checks do not replace required manual, legal, design, accessibility, security, or operational review.

## Related Skills

- `agent-evals`
- `agent-security`
- `rag-engineering`

## Supporting Material

- OpenAI docs, NIST AI RMF, OWASP AI

If this Skill contains `references/`, read only the files relevant to the current task. Inspect helper scripts before running them and avoid destructive execution by default.

## V5 Professional Standard

Use this Skill as a professional decision framework, not a checklist. Frame the real outcome, inspect evidence, test competing explanations, choose a proportional solution, and verify the result at the strongest practical level. Respect repository-pinned versions and distinguish fact, inference, assumption, recommendation, unknown, and manual verification when material.

For deeper reasoning, read `references/EXPERT_PLAYBOOK.md` and only the relevant shared V5 field guide. Do not bulk-load unrelated references.
