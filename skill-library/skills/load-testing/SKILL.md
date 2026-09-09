---
name: load-testing
description: Design and review authorized performance/load tests for websites, APIs, realtime systems, workers, queues, and backends using realistic workloads and explicit thresholds.
---

# load-testing

## Purpose

Design and review authorized performance/load tests for websites, APIs, realtime systems, workers, queues, and backends using realistic workloads and explicit thresholds.

## Activate When

- capacity planning
- latency SLO validation
- launch scaling
- realtime/queue throughput

## Required Workflow

1. Confirm authorization and a safe environment.
2. Define workload, scenario mix, data, SLIs/SLOs, ramps, and thresholds.
3. Establish a low-load baseline.
4. Monitor app, DB, queue, cache, network, CPU, memory, and saturation.
5. Progress from normal load to stress/spike/soak only when justified.
6. Identify first saturated resource and retest after optimization.

## Responsibilities

- Inspect real implementation/evidence before making claims.
- Separate verified facts from assumptions.
- Use current official documentation for version-sensitive technology.
- Prefer the smallest complete, reversible solution.
- Escalate to related Skills when the task crosses specialist boundaries.

## Must Not

- Do not stress production/public systems without explicit authorization.
- Do not equate synthetic tests with all real-user behavior.
- Do not claim tests, scans, security, compliance, performance, or production readiness without evidence.

## Expected Inputs

- relevant source/configuration/design/data/workflow files
- current requirements and constraints
- runtime evidence, logs, screenshots, profiles, test results, or contracts when available
- deployment/platform/provider details when relevant

## Expected Outputs

- load scenarios
- thresholds and safety plan
- bottleneck findings
- capacity recommendation

## Verification Standard

- Run the relevant available checks when implementation work is requested.
- State exactly what was executed and what remains unverified.
- Re-test fixes or compare before/after evidence where practical.
- Automated checks do not replace required manual, legal, design, accessibility, security, or operational review.

## Related Skills

- `performance-audit`
- `sre-reliability`
- `realtime-systems`

## Supporting Material

- Grafana k6 and Google SRE

If this Skill contains `references/`, read only the files relevant to the current task. Inspect helper scripts before running them and avoid destructive execution by default.
