# Git and release discipline example

## Request

> Prepare this completed feature for review. Keep useful history, squash iterative repair noise where appropriate, verify locally before pushing, and create a release only if this is a meaningful version milestone.

## Expected approach

- Inspect status, branch, remotes, recent history, workflows, and deployment triggers.
- Preserve unrelated work.
- Group the change into coherent, testable commit boundaries.
- Run local checks before using CI as a debugging loop.
- Use a pull request when collaboration or repository policy calls for it.
- Treat a deployment as an operational event and a release as a versioned product milestone.
- Never rewrite shared history or delete tags/releases without explicit approval and recovery evidence.
