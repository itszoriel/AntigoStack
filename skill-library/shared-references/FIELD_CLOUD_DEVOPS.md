# Cloud, DevOps, SRE, Deployment, and Infrastructure — Professional Field Guide

## Core mental models
- desired service outcome/SLO before infrastructure choice
- identity/network/data boundaries
- immutable/reproducible build and deploy artifacts
- failure domains, redundancy and graceful degradation
- observability and rollback as deployment features
- capacity/cost tied to measured workload
- least privilege and change safety
- RPO/RTO and tested recovery

## Questions experienced practitioners ask
- What availability/recovery objective is actually required?
- Which environment/account/region/network boundary are we changing?
- Can the build and deployment be reproduced?
- What happens if this dependency/zone/credential fails?
- How will we detect a bad deploy and roll back?
- Is the cost/complexity proportional to scale?

## Diagnostic / implementation tools
- provider-native diagnostics and architecture guidance
- IaC plan/validate/test tooling
- container/Kubernetes inspection
- CI/CD logs and artifact/provenance metadata
- metrics/logs/traces and synthetic/smoke tests
- backup/restore and failover exercises

## Common professional failure modes
- production changes used as first-line debugging
- manual drift not reflected in IaC
- overbroad IAM
- no rollback or restore test
- autoscaling without bottleneck evidence
- deploying every experimental push unnecessarily
- green CI treated as production verification

## Standard
Use the actual project context, current authoritative documentation, and the V5 evidence/verification rules. Treat this guide as a reasoning scaffold rather than a substitute for version-specific documentation.
