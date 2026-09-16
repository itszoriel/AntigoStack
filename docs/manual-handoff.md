# Manual handoff protocol

AntigoStack must not claim an action was completed when the necessary account, authority, tool, hardware, secret, or external state was unavailable.

Use a manual handoff for credentials, MFA, account ownership, payments, legal or business approval, administrator-only permissions, production secrets, GUI-only controls, app-store consoles, DNS registrars, signing, physical devices, and similar boundaries.

## Required handoff

1. **What Codex completed** — state the work already performed and its evidence.
2. **What remains manual** — identify the exact outstanding action.
3. **Why it must be manual** — name the permission, account, tool, hardware, or judgment boundary.
4. **Exact steps** — give numbered instructions for the actual operating system, tool, framework, and known version.
5. **Exact values** — provide verified commands, paths, filenames, environment-variable names, ports, URLs, and field values where known.
6. **Expected result** — describe what the user should see after material steps.
7. **Verification** — provide a command, page, log, response, or observable result that proves success.
8. **Troubleshooting** — include likely failure causes and diagnostic steps for non-trivial flows.
9. **Rollback or recovery** — explain reversal or recovery when the action is risky.
10. **Resume point** — tell the user exactly what output or result to return.

## Accuracy rules

- Do not invent current menu names or buttons. When the exact UI is not verified, describe the stable concept the user should locate and mark the path as uncertain.
- Do not ask the user to expose secrets. Request sanitized error output or confirmation instead.
- Do not turn a manual boundary into a claim of completion.
- Keep trivial handoffs concise, but retain all safety-critical values and checks.

A good handoff is an executable continuation of the work, not a generic “do this manually” placeholder.
