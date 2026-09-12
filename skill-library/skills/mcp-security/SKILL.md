---
name: mcp-security
description: "Review Model Context Protocol and similar tool/resource integrations for server trust, authentication, authorization, tool schemas, secret exposure, prompt injection, and side effects."
---

# mcp-security

## Purpose

Review Model Context Protocol and similar tool/resource integrations for server trust, authentication, authorization, tool schemas, secret exposure, prompt injection, and side effects.

## Activate When

- adding MCP servers
- filesystem/GitHub/database/cloud MCP
- MCP tools with writes

## Required Workflow

1. Inventory each server, tool, resource, prompt, owner, and update channel.
2. Identify credentials/data accessible to server/client.
3. Review tool descriptions and parameter schemas as security interfaces.
4. Restrict filesystem/network/account/tenant scope and separate read from write tools.
5. Require approval for consequential writes when appropriate.
6. Treat returned content as untrusted and test prompt injection, revocation, and audit logging.

## Responsibilities

- Inspect real implementation/evidence before making claims.
- Separate verified facts from assumptions.
- Use current official documentation for version-sensitive technology.
- Prefer the smallest complete, reversible solution.
- Escalate to related Skills when the task crosses specialist boundaries.

## Must Not

- Do not assume popular MCP servers are safe.
- Do not grant write credentials for read-only tasks.
- Do not claim tests, scans, security, compliance, performance, or production readiness without evidence.

## Expected Inputs

- relevant source/configuration/design/data/workflow files
- current requirements and constraints
- runtime evidence, logs, screenshots, profiles, test results, or contracts when available
- deployment/platform/provider details when relevant

## Expected Outputs

- MCP inventory
- permission matrix
- injection/side-effect findings
- approval recommendations

## Verification Standard

- Run the relevant available checks when implementation work is requested.
- State exactly what was executed and what remains unverified.
- Re-test fixes or compare before/after evidence where practical.
- Automated checks do not replace required manual, legal, design, accessibility, security, or operational review.

## Related Skills

- `agent-security`
- `ai-agent-engineering`
- `security-review`

## Supporting Material

- OpenAI/Codex MCP guidance and OWASP agentic security

If this Skill contains `references/`, read only the files relevant to the current task. Inspect helper scripts before running them and avoid destructive execution by default.

## V5 Professional Standard

Use this Skill as a professional decision framework, not a checklist. Frame the real outcome, inspect evidence, test competing explanations, choose a proportional solution, and verify the result at the strongest practical level. Respect repository-pinned versions and distinguish fact, inference, assumption, recommendation, unknown, and manual verification when material.

For deeper reasoning, read `references/EXPERT_PLAYBOOK.md` and only the relevant shared V5 field guide. Do not bulk-load unrelated references.
