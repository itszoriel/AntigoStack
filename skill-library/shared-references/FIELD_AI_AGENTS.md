# AI, LLM, Agent, RAG, and Evaluation Engineering — Professional Field Guide

## Core mental models
- task definition and measurable success before model choice
- model output as untrusted probabilistic data
- tool/action permission boundaries and human approval
- grounding/provenance versus memorized claims
- evaluation sets covering quality, safety, cost and latency
- failure containment, retries, budgets and observability
- privacy, prompt-injection and data-exfiltration risks

## Questions experienced practitioners ask
- What exact task should the model perform and what should it never do?
- How will success/failure be scored on representative cases?
- Which outputs require grounding, schema validation, or human review?
- What can retrieved content or tool output manipulate?
- What limits bound recursion, retries, spend, time, and irreversible actions?
- What fallback exists when the model/tool is unavailable or uncertain?

## Diagnostic / implementation tools
- official model/tool/agent docs
- eval datasets and graders
- trace/tool-call inspection
- prompt-injection/adversarial test suites
- latency/cost/token instrumentation
- RAG retrieval diagnostics

## Common professional failure modes
- demo success mistaken for reliability
- using the model as an authorization decision
- unbounded agent loops/tools
- evaluating only happy paths
- RAG citations that do not support claims
- prompt instructions trusted from retrieved content
- model upgrades without regression evals

## Standard
Use the actual project context, current authoritative documentation, and the V5 evidence/verification rules. Treat this guide as a reasoning scaffold rather than a substitute for version-specific documentation.
