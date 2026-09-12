# Expert Playbook — `ai-app-engineering`

## Professional stance

Design production LLM/AI features with clear task definitions, model selection, structured outputs, grounding, privacy, latency, cost, retries, fallbacks, observability, and evaluations.

A strong practitioner starts from the actual outcome and evidence rather than immediately applying a favorite tool or pattern. The job is to reach a defensible result with the least unnecessary complexity.

## Broad-to-specific knowledge map

### Field-level mental models
- task definition and measurable success before model choice
- model output as untrusted probabilistic data
- tool/action permission boundaries and human approval
- grounding/provenance versus memorized claims
- evaluation sets covering quality, safety, cost and latency
- failure containment, retries, budgets and observability
- privacy, prompt-injection and data-exfiltration risks

### Skill-specific operating scope
The existing required workflow defines the concrete task sequence. Treat these as checkpoints rather than blind steps:
- Define the task and why AI is appropriate; keep deterministic logic deterministic.
- Define output schema/failure behavior and minimize data sent to providers.
- Validate structured output and treat generated content as untrusted.
- Define grounding/citation needs, timeouts, retries, fallbacks, and provider failure.
- Track model/prompt/retrieval versions and measure quality, cost, latency.
- Add representative evals and human review for consequential use; regression-test model/provider changes.

### Boundaries with neighboring specialties
- Coordinate with `agent-evals` when the problem materially crosses that boundary; do not duplicate its full scope.
- Coordinate with `agent-security` when the problem materially crosses that boundary; do not duplicate its full scope.
- Coordinate with `rag-engineering` when the problem materially crosses that boundary; do not duplicate its full scope.

## Questions a professional asks before acting
- What exact task should the model perform and what should it never do?
- How will success/failure be scored on representative cases?
- Which outputs require grounding, schema validation, or human review?
- What can retrieved content or tool output manipulate?
- What limits bound recursion, retries, spend, time, and irreversible actions?
- What fallback exists when the model/tool is unavailable or uncertain?

Add task-specific questions derived from the repository, data, users, deployment target, and failure evidence before choosing an implementation.

## Investigation and diagnostic method
1. Establish the desired outcome, current symptom/state, risk, and success criterion.
2. Inspect the strongest available evidence rather than relying on the request wording alone.
3. Identify the relevant lifecycle, boundaries, dependencies, state/data flow, and invariants for this Skill.
4. Form competing explanations or design options.
5. Use the cheapest reliable observation/test to eliminate weak hypotheses.
6. Choose the smallest complete solution that fits project scale and pinned versions.
7. Implement without mixing unrelated cleanup.
8. Re-run the original scenario plus regression/edge checks.
9. Report residual risk and anything that still requires runtime, production, specialist, or manual verification.

## Tooling and evidence
- official model/tool/agent docs
- eval datasets and graders
- trace/tool-call inspection
- prompt-injection/adversarial test suites
- latency/cost/token instrumentation
- RAG retrieval diagnostics

Prefer project-native tools first. Add a new dependency/tool only when it provides material evidence or repeatable value.

## Decision framework

When several solutions can work, compare them on: correctness, compatibility, security/privacy, reliability, maintainability, performance/cost, operational burden, reversibility, migration impact, and project scale. Explicitly reject an inferior option when evidence makes the difference material; do not argue over equivalent stylistic choices.

## Common failure modes to actively look for
- demo success mistaken for reliability
- using the model as an authorization decision
- unbounded agent loops/tools
- evaluating only happy paths
- RAG citations that do not support claims
- prompt instructions trusted from retrieved content
- model upgrades without regression evals

### Skill-specific prohibitions already defined
- Do not treat model output as ground truth.
- Do not send unnecessary secrets/PII.
- Do not claim tests, scans, security, compliance, performance, or production readiness without evidence.

## Verification and professional deliverable

Use the V5 evidence ladder. A professional deliverable should contain the result/implementation, the evidence that supports it, the verification actually run, material trade-offs, unresolved risk, and a precise manual handoff when access or human judgment is required.

Expected domain deliverables include:
- AI architecture
- prompt/output contract
- privacy/security notes
- eval plan
- cost/latency/fallback strategy

## Progressive-disclosure references

Read only when needed:

- `~/.codex-engineering-system/v5/skill-library/shared-references/FIELD_AI_AGENTS.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/PROFESSIONAL_REASONING.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/EVIDENCE_AND_VERIFICATION.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/VERSION_COMPATIBILITY.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/MANUAL_HANDOFF.md` when a user action boundary is reached
