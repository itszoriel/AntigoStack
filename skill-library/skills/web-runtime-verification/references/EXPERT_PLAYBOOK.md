# Expert Playbook — `web-runtime-verification`

## Professional stance

Prove that web resources and metadata survive source, build, runtime and deployment transformations and are actually observable by the intended browser/crawler/integration.

A strong practitioner starts from the actual user/system outcome and evidence, not from a favorite tool, checklist score, or the wording of the initial diagnosis.

## Broad-to-specific knowledge map

### Field-level mental models
- repository path, build output, runtime route and public URL are distinct
- status code alone is not content verification
- bundlers/frameworks can hash, relocate, inline or omit assets
- SPA fallbacks can make missing assets return HTML 200
- CDN/browser/search/social caches create another observable state
- technical eligibility and external-provider adoption are separate

### Skill-specific operating scope
- locate source declaration/file and identify build transformation/base path
- inspect production build output or rendered configuration
- resolve exact public URL from deployed origin and rendered reference
- fetch deployed URL with redirect/header/body validation
- verify content type plus file/body signature and reject HTML fallback
- check crawler/access-control/cross-origin behavior when relevant
- validate resource-specific format, dimensions, schema or canonical host
- separate SOURCE/BUILD/LOCAL/DEPLOYED/EXTERNAL evidence and provider processing

### Boundaries with neighboring specialties
- Coordinate with `seo-review` when the problem materially crosses that boundary; do not duplicate its full scope.
- Coordinate with `web-launch-readiness` when the problem materially crosses that boundary; do not duplicate its full scope.
- Coordinate with `deployment-readiness` when the problem materially crosses that boundary; do not duplicate its full scope.
- Coordinate with `dns-tls-http` when the problem materially crosses that boundary; do not duplicate its full scope.

## Questions a professional asks before acting
- Where does this resource originate and what transforms it?
- What exact URL does rendered production output reference?
- What status, redirect chain, content type and bytes/body does that URL return?
- Is the response the intended file or an SPA/error fallback?
- Can the intended crawler/client access it?
- Which requirement is technically proven versus awaiting external cache/recrawl?

Add task-specific questions derived from the actual repository, users, runtime/deployment, provider behavior and observed failure before choosing an implementation.

## Investigation and diagnostic method

1. Define the desired outcome and strongest success criterion.
2. Inspect the actual source/configuration and current version/toolchain.
3. Observe rendered/runtime/deployed behavior when the problem can differ from source.
4. Form competing explanations instead of locking onto the user's first diagnosis.
5. Use the cheapest reliable observation to eliminate weak hypotheses.
6. Choose the smallest complete, compatible and reversible solution.
7. Implement without mixing unrelated cleanup.
8. Re-run the original scenario plus important regression/edge checks.
9. Report the evidence level reached, residual risk and any manual/external verification still required.

## Tooling and evidence
- production build output inspection
- curl/HTTP client with headers/redirects/body checks
- browser rendered DOM/network inspection
- file signature/image dimension/schema validators
- robots/crawler access checks
- provider inspection/debug tools when available

Prefer project-native tools first. Add dependencies only when they materially improve repeatable evidence or implementation quality.

## Decision framework

Compare viable solutions on correctness, compatibility, accessibility/security/privacy as relevant, maintainability, performance/cost, operational burden, reversibility and project scale. Reject a materially inferior option with reasons; do not argue over equivalent stylistic preferences.

## Common failure modes to actively look for
- file exists in repo but was never copied to deployment
- hashed/relocated asset URL differs from source path
- missing asset returns index.html with 200
- wrong base path/hostname/canonical after deployment
- stale CDN/browser/search cache hides new resource
- claiming Google/social provider will display/process immediately

### Skill-specific prohibitions
- Do not mark PASS solely because source exists.
- Do not accept HTTP 200 without validating returned content.
- Do not promise external provider processing/display timing.

## Verification and professional deliverable

Use the V5 evidence language and verification ladder. State what was actually tested, what was inferred, and what remains external/manual.

Expected domain deliverables include:
- resolved source→build→public path chain
- deployed request/content evidence
- PASS/FAIL/NOT VERIFIED by evidence level
- exact remediation, re-test and external/manual follow-up

## Progressive-disclosure references

Read only when needed:
- `~/.codex-engineering-system/v5/skill-library/shared-references/FIELD_WEB_RUNTIME.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/WEB_RUNTIME_VERIFICATION.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/PROFESSIONAL_REASONING.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/EVIDENCE_AND_VERIFICATION.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/VERSION_COMPATIBILITY.md`
- `~/.codex-engineering-system/v5/skill-library/shared-references/MANUAL_HANDOFF.md` when a user action boundary is reached
