# GitHub / Git / Release Intelligence

## Lifecycle vocabulary

Edit ≠ commit ≠ push ≠ PR ≠ CI run ≠ deployment ≠ tag ≠ release.

Each should exist for a reason.

## Professional history

Use commits as coherent checkpoints. Keep iterative debugging local when possible. A branch may contain messy development history; shared `main` should optimize for comprehension and rollback. Squash noisy PR histories when repository policy and audit needs allow it.

## Deployment intelligence

Treat preview/staging/production separately when useful. Inspect workflow/provider triggers before changing them. Cancel or supersede obsolete CI/deployment work when safe and supported. Remote deploys should answer a question that cannot reasonably be answered locally.

## Release intelligence

A release is a meaningful versioned product/software milestone, not a counter that should match deployments. Define release criteria, version/tag strategy, notes/changelog, artifact/provenance needs, rollout, verification, and rollback.

## Safety

Repository cleanup can destroy unique work. Before deleting branches/tags/releases or rewriting history, prove the content is redundant/recoverable and obtain explicit authorization for consequential changes.
