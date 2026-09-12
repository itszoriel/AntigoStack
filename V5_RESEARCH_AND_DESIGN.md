# V5 Research and Design Report

## Research objective

V5 was designed to make each Skill behave less like a checklist and more like a disciplined professional practice: framing the real problem, gathering evidence, using domain mental models, testing competing explanations, selecting proportional solutions, respecting version constraints, and proving results.

## Research strategy

Primary guidance comes from current official/standards sources appropriate to each field. Examples include OpenAI Codex/developer documentation for Skills and agent behavior, Git/GitHub for repository/release workflows, W3C WCAG for accessibility, Google Search Central for search resources, OWASP/NIST/CISA for security, vendor language/framework/database/cloud documentation, and engine/platform documentation for game/mobile/creative work.

Practitioner posts, issue trackers and community discussions are useful for operational edge cases but should not override authoritative documentation for security, compliance, API contracts or version behavior.

## Important design conclusion

Attempting to place “everything a professional knows” directly in 197 `SKILL.md` files would recreate the V3/V4 context-budget problem. V5 therefore uses progressive disclosure:

- concise Skill trigger/workflow
- per-Skill `EXPERT_PLAYBOOK.md`
- per-Skill source map
- shared field guides
- current official documentation for volatile/version-specific facts

This gives broad-to-specific professional reasoning without forcing Codex to ingest the entire library.

## Cross-cutting professional invariants

1. truth/evidence over agreement
2. proportional solution over cargo-cult architecture
3. project version over newest-version assumptions
4. root cause over symptom patching
5. verification over confidence
6. explicit uncertainty over fabrication
7. manual handoff over pretending unavailable actions were completed
8. meaningful Git history/releases over activity counts
9. deployed/runtime evidence over repository-only checks

## Known limitation

No static Skill library can literally contain every current fact in every professional discipline. V5 intentionally stores durable mental models and directs fast-changing details to current authoritative documentation for the project's exact version/provider. That is a stronger professional model than freezing huge volumes of soon-stale text.

## QA finding corrected before release

A post-generation audit caught that several public-web specialties had inherited an over-broad legal/content field template. V5 was corrected before delivery: accessibility, SEO/search discovery, localization/i18n, web analytics, web performance and web runtime now have distinct field guides and specialist playbooks. This is an example of the V5 truth-over-agreement rule applied to the package itself: generation success is not quality verification.

The same QA pass narrowed source maps to specialty-specific official/canonical documentation and made pack auto-detection more conservative.

A second structural QA pass also found 68 generated Skill descriptions whose YAML frontmatter contained unquoted colons. The content was readable as Markdown but not reliably parseable as YAML. V5 now serializes every description safely, and all 197 library Skills plus the 18 bundled Core copies were parsed successfully during static QA.

The VB.NET compatibility research was also tightened: Visual Studio 2010 is treated as Visual Basic 10-era tooling, but the actual `.vbproj` target framework remains authoritative because VS2010 supports multi-targeting. Current documentation must not silently raise a legacy project's syntax or framework ceiling.
