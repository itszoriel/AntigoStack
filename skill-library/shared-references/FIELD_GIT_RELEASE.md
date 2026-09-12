# Git, GitHub, CI/CD, Repository Governance, and Release Engineering — Professional Field Guide

## Core mental models
- history as communication and rollback structure
- branch/PR strategy matched to team/project maturity
- local verification before remote execution when possible
- CI as deterministic evidence, not a deployment counter
- deployments as operational events; releases as versioned product milestones
- rulesets/permissions with least privilege
- artifact integrity, provenance and rollback

## Questions experienced practitioners ask
- What repository state and uncommitted work must be preserved?
- Does this change need a branch/PR or is the project still experimental?
- Can the failure be tested locally instead of pushing repeatedly?
- Which workflow/provider creates each deployment and why?
- Should obsolete runs be canceled or serialized?
- Does this change meet explicit release criteria or merely deploy?
- Can cleanup delete unique history or unreleased work?

## Diagnostic / implementation tools
- git status/log/diff/branch/reflog
- GitHub PR/check/ruleset/environment/deployment/release data
- workflow YAML and provider deployment configuration
- semantic version/tag/release-note tooling
- secret/dependency/supply-chain scanning

## Common professional failure modes
- commit spam from agent iterations
- using push as a test runner when local checks exist
- 100 deployments caused by noisy trigger design
- creating releases just to make the count nonzero
- force-push/branch deletion without recovery evidence
- tags/releases drifting from deployed artifacts
- workflow concurrency groups canceling unrelated jobs

## Standard
Use the actual project context, current authoritative documentation, and the V5 evidence/verification rules. Treat this guide as a reasoning scaffold rather than a substitute for version-specific documentation.
