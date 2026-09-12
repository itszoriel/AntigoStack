# Smart GitHub Workflow

## Desired default for active development

feature/fix branch → local verification → coherent commits → PR → required checks → review if appropriate → squash/merge strategy → production deployment gate → post-deploy smoke → release only when release criteria are met.

## AI-agent hygiene

An agent may make many local edits/testing attempts before one useful commit. Do not automatically push after every edit. If a bug is reproducible locally, finish the diagnostic loop locally first. If production-only behavior is involved (DNS, OAuth callback, provider env, CDN, production DB/network), make the smallest remote experiment that can answer the question and collect logs/evidence before another deployment.

## Deployment-noise audit

Trace each deployment back to its creator:
- GitHub Actions workflow/environment deployment
- Vercel/Netlify/Render/Azure/etc. Git integration
- preview deployment per branch/PR/commit
- duplicated deployment via both provider integration and Actions
- workflow triggers on both `push` and PR events
- bot/dependency commits

Check concurrency/cancellation so obsolete branch/preview jobs do not keep running when a newer commit supersedes them. Do not cancel production/release work blindly.

## Release criteria

A release should represent a versioned milestone users/operators can reason about. Possible criteria: meaningful feature set, distributed artifact/API package, milestone deployment, compatibility change, public beta, stable version, or security/maintenance release. A CSS tweak or every production deployment does not inherently require a Release.

## Cleanup safety

Before deleting a branch/tag/release, prove its commits/artifacts are reachable or intentionally disposable. Prefer archiving/closing over destructive cleanup when uncertain. Use reflog/local backup only as recovery aids, not justification for risky history rewrites.
