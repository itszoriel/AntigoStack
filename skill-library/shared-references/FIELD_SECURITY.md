# Security, Identity, Privacy, and Defensive Assurance — Professional Field Guide

## Core mental models
- assets, actors, trust boundaries and attacker goals
- authentication versus authorization versus business entitlement
- least privilege, secure defaults and server-side enforcement
- input/output/data-flow attack surfaces
- abuse/business-logic/race/resource-exhaustion paths
- secrets/key lifecycle and supply-chain trust
- detection, response, recovery and residual risk

## Questions experienced practitioners ask
- What is the protected asset and who can act on it?
- Where is authorization enforced for every object/action?
- What can an attacker control, replay, reorder, upload, redirect, or exhaust?
- What trust crosses tenant/account/service boundaries?
- What evidence proves a finding and what remains untested?
- What is the blast radius if a credential/dependency/control fails?

## Diagnostic / implementation tools
- OWASP/NIST guidance and current platform security docs
- SAST/SCA/secret scans and dependency advisories
- authorized DAST/API tests/fuzzing when appropriate
- logs/audit trails and IAM policy analyzers
- threat models and abuse-case tests

## Common professional failure modes
- security by UI hiding
- treating authentication as authorization
- automated scanner output accepted without triage
- claiming no findings means secure
- broad permissions for convenience
- security fixes that break recovery/operability
- compliance claims from technical checks alone

## Standard
Use the actual project context, current authoritative documentation, and the V5 evidence/verification rules. Treat this guide as a reasoning scaffold rather than a substitute for version-specific documentation.
