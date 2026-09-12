# Security policy

## Supported version

Security fixes are currently considered for the latest repository version, V5.0.1. No maintenance commitment is stated for reconstructed earlier milestones.

## Report a vulnerability

Do not disclose sensitive vulnerability details in a public issue.

Use GitHub's private vulnerability-reporting form for this repository if the **Security** tab offers **Report a vulnerability**. If that option is unavailable, open a public issue containing no exploit details or secrets and ask the maintainer to provide a private contact channel.

Include, privately:

- the affected file, version, or workflow;
- impact and required attacker conditions;
- minimal reproduction steps;
- whether credentials or user-level Codex configuration are involved;
- a proposed mitigation if available; and
- any disclosure deadline that applies.

Never send real secrets, tokens, or private user data as reproduction material. Use redacted or disposable values.

## Scope

Relevant reports include installer or rollback data loss, unsafe path handling, untrusted Skill or prompt execution, secret exposure, package-integrity bypasses, and guidance that would materially weaken authorization or other security controls.

The repository's automated checks are defensive quality gates, not a guarantee that CodexForge or generated recommendations are vulnerability-free.
