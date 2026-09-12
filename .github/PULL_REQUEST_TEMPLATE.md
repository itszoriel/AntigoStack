## Problem and scope

Describe the user-facing or maintainer problem and the paths in scope.

## Changes

Summarize the smallest coherent solution and any alternatives rejected.

## Evidence and verification

- [ ] `./verify-package.ps1`
- [ ] `./scripts/verify-repository.ps1`
- [ ] `./install-update.ps1 -WhatIf` when installer/package behavior is affected

List exact commands run, results, and anything not verified.

## Risk and compatibility

Describe version constraints, security/privacy implications, migration impact, and rollback where relevant.

## Integrity

- [ ] No secrets, private prompts, backups, or generated temporary files are included.
- [ ] `package-hashes.json` was regenerated when repository files changed.
- [ ] Model behavior is not claimed from unexecuted evaluation scenarios.
