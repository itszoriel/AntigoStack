# Data Analysis, BI, Statistics, and Data Science — Professional Field Guide

## Core mental models
- decision/question before metric or model
- unit of analysis, grain, source of truth, lineage, and data-generating process
- measurement validity, missingness, bias, leakage, confounding, and uncertainty
- descriptive versus causal/predictive claims
- segmentation, time windows, cohorts, denominators and base rates
- reproducibility and auditable transformations
- communication matched to stakeholder decision

## Questions experienced practitioners ask
- What decision will this analysis support?
- What is one row/observation and what population does it represent?
- Which source and definition is authoritative?
- What data-quality issue could reverse the conclusion?
- Are we claiming description, prediction, or causation?
- What denominator, baseline, uncertainty, and segment could change interpretation?
- Can another analyst reproduce the result from raw inputs?

## Diagnostic / implementation tools
- SQL/query plans and database metadata
- Excel/Power Query/BI semantic models where used
- Python/R notebooks/scripts with versioned environments
- profiling/data-quality checks and lineage
- statistical diagnostics and experiment analysis
- dashboard QA against source queries

## Common professional failure modes
- answering an ill-defined business question precisely
- double counting from joins or wrong grain
- silent missing/outlier treatment
- data leakage and post-treatment variables
- p-values without effect sizes/context
- dashboards with inconsistent KPI definitions
- correlation presented as causation
- manual spreadsheet transformations with no audit trail

## Standard
Use the actual project context, current authoritative documentation, and the V5 evidence/verification rules. Treat this guide as a reasoning scaffold rather than a substitute for version-specific documentation.
