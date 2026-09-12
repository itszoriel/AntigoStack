# Technology routing

The technology router selects specialist context from repository evidence rather than from habit or a single filename.

## Routing sequence

1. Inspect manifests, lockfiles, project files, extensions, build and deployment files, documentation, runtime configuration, data, and assets.
2. Detect pinned versions and compatibility ceilings where they affect the work.
3. Classify the job by the user's outcome, not merely by technology labels.
4. Identify the primary risk domain: correctness, security, data, deployment, performance, accessibility, reliability, or release integrity.
5. Select the narrowest one to four specialist Skills that materially improve the task.
6. Read only the needed playbooks, references, and current authoritative sources.
7. Resolve conflicting guidance using requirements, evidence, risk, cost, compatibility, scale, and reversibility.

## Conservative automatic detection

The installed pack manager's `auto` command inspects recognizable project evidence. A generic `package.json`, `pyproject.toml`, `.csproj`, Maven/Gradle project, `Gemfile`, or ordinary GitHub workflow is not enough by itself to infer a web or release stack.

Examples of stronger evidence include framework dependencies, a Web SDK declaration, an Android plugin, a Unity project marker, Terraform files, or workflow content that actually deploys, publishes, or releases.

When evidence is insufficient, `auto` keeps only the Core set. This is intentional: a false-positive pack adds irrelevant instructions and consumes context.

## Manual selection

Use `codex-pack.ps1 list` to inspect available packs and profiles, `profile <name>` for a known role, or `enable <pack>` for an explicit capability. Use `reset` to return to Core only.

Routing does not prove compatibility or correctness. A selected specialist must still inspect the exact repository version and verify its recommendations.
