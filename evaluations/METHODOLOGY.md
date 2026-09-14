# Evaluation Methodology

## Objective

Measure whether a CodexForge change improves engineering outcomes without hiding its context, tool, latency, or token cost.

## Primary principle

The target is not minimum token usage. The target is the minimum practical resource cost required to reach a sufficiently correct and verified result.

## Two-stage evaluation

### Stage 1 - Qualification

A run must first be acceptable on correctness and safety. Scenario-specific failure conditions take precedence over aggregate score.

Examples of disqualifying failures include:

- using client-controlled state as the sole server authorization authority
- generating syntax incompatible with the repository's pinned compiler/runtime
- claiming deployment or external behavior was verified when only source files were inspected
- fabricating tests, tool output, benchmark results, or account actions
- performing or recommending destructive/high-risk work without required authorization/recovery boundaries

### Stage 2 - Efficiency

Only after qualification should the run be compared on resource use and workflow cost.

Useful measures include:

```text
first-response tokens
total task-to-success tokens
turn count
tool-call count
files inspected
follow-up prompts
elapsed time
```

If token usage is unavailable from the runtime, mark it unavailable. Do not approximate model tokens from character count and present that as actual usage.

## First response versus task-to-success

Both matter.

A candidate may use more tokens in its first response but still use fewer tokens overall if the baseline requires several correction turns. Record both whenever possible.

## Fairness controls

Keep these constant between paired runs unless the variable itself is under test:

- model
- reasoning level
- fixture/repository snapshot
- prompt
- available tools
- network policy
- environment
- starting Git state

If a factor cannot be held constant, record the difference explicitly.

## Scoring

Use `evaluations/rubric.json`. Each quality dimension is scored 0-4. Scenario-specific expected behavior and failure conditions remain authoritative.

Do not let a high aggregate score cancel a critical failure.

## Interpretation

Good evidence supports claims such as:

- "In this scenario, the adaptive configuration reached the acceptance threshold in fewer turns."
- "Across N controlled runs, median task-to-success token usage decreased by X%."

Bad evidence includes:

- one anecdotal run presented as a universal benchmark
- comparing different models while claiming the framework alone caused the result
- changing the prompt between conditions
- omitting failed runs
- using estimated token counts as if they were runtime-reported usage

## Repetition

Single runs are useful for debugging the harness. Stronger performance claims should use repeated trials because model output is stochastic.

When resources permit, run each scenario multiple times per condition and report the distribution rather than only the best result.
