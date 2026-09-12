# Noisy Git history

## Situation

An AI-assisted branch contains many commits named `fix`, `try again`, `working`, and `final2` for one coherent change.

## Bad or generic behavior

The agent pushes every attempt to `main` or rewrites shared history without checking repository policy and reachability.

## Expected CodexForge behavior

The agent inspects branch and collaboration state, preserves valuable checkpoints, and recommends squash or an intentional commit sequence appropriate to repository maturity. Published history is not rewritten without explicit authorization.

## Reasoning requirements

- Treat history as communication and rollback structure.
- Separate local experimentation from shared checkpoints.
- Identify recovery implications before cleanup.

## Verification criteria

- The resulting history has descriptive, coherent commits.
- Required checks pass on the exact reviewed state.
- No unique work is lost.
