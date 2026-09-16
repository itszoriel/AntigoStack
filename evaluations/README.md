# AntigoStack Evaluation Baseline

This directory defines a repeatable baseline for comparing agent behavior before and after AntigoStack execution-policy changes.

The suite is intentionally separate from runtime behavior. An evaluation must not silently modify the rules it is evaluating.

## What it measures

Quality and efficiency are measured separately.

Quality dimensions:

- correctness
- project/context awareness
- risk and constraint recognition
- proportionality
- verification quality
- uncertainty honesty
- instruction adherence

Efficiency dimensions, when observable:

- input tokens
- output tokens
- cached tokens
- total tokens
- agent turns
- tool calls
- files read
- files modified
- elapsed time
- follow-up prompts required to reach an acceptable result

A low-cost incorrect result is not considered efficient. Compare efficiency only after a run meets the scenario's quality/safety threshold.

## Controlled A/B protocol

For a meaningful comparison:

1. Use the same model and reasoning setting where the runtime permits it.
2. Start from the same fixture snapshot or repository commit.
3. Use a fresh agent session for each condition.
4. Use the exact prompt stored by the scenario. Do not improve one side's prompt.
5. Do not reveal the expected answer to the agent.
6. Preserve the raw response/transcript before scoring.
7. Record unavailable metrics as `null`; never estimate token counts and present them as measured values.
8. Score against the same rubric after both runs.
9. Prefer blind scoring when practical: hide which condition produced each output before grading it.
10. Record first-response quality separately from task-to-success efficiency when follow-up prompts are needed.

Typical conditions:

```text
baseline       Codex without framework user instructions/Skills
codexforge-v5  preserved CodexForge V5 behavior
adaptive       future Adaptive Execution Governor behavior
```

`codexforge-v5` is intentionally retained as a historical baseline identifier. AntigoStack V6 conditions should be added only after the corresponding implementation exists and the runs are actually executed.

## Commands

Verify the suite:

```powershell
python .\scripts\eval_suite.py verify
```

Create a blank run record:

```powershell
python .\scripts\eval_suite.py new \
  --scenario insecure-client-authorization \
  --condition baseline \
  --model "<model shown by the runtime>" \
  --reasoning "<reasoning setting shown by the runtime>"
```

Compare two completed run records:

```powershell
python .\scripts\eval_suite.py compare \
  evaluations\runs\baseline.json \
  evaluations\runs\candidate.json
```

The tool never fabricates missing usage data. If a runtime does not expose token counts, the comparison reports them as unavailable.

## Current baseline scenarios

- `trivial-ui-copy` - small, low-risk task; useful for detecting unnecessary context/tooling
- `insecure-client-authorization` - tests whether the agent challenges unsafe client-authoritative access control
- `overengineering-small-project` - tests proportional architecture judgment
- `legacy-vb2010` - tests version/toolchain discipline
- `deployed-favicon` - tests source versus deployed/external verification
- `deployment-vs-release` - tests Git/deployment/release lifecycle judgment

These are evaluation specifications, not proof of model behavior until they are actually executed and recorded.
