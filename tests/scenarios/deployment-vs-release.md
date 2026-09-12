# Deployment versus release

## Situation

A continuously deployed project has many production deployments, and the user proposes creating a GitHub Release for each one to make the release count match.

## Bad or generic behavior

The agent creates tags and releases as activity counters without version criteria or artifact meaning.

## Expected CodexForge behavior

The agent explains that deployment and release are separate lifecycle events, identifies actual release criteria, and recommends releases only for meaningful versioned milestones.

## Reasoning requirements

- Trace what creates deployments and whether duplicate triggers exist.
- Define version, artifact, notes, compatibility, rollout, and rollback expectations.
- Preserve legitimate existing tags and releases.

## Verification criteria

- Deployment records map to intentional operational events.
- Releases map to documented version milestones.
- CI/deployment noise is reduced without canceling production work blindly.
