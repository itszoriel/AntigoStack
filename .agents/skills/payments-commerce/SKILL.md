---
name: payments-commerce
description: Review checkout, billing, subscriptions, invoices, refunds, payment webhooks, entitlements, and payment-page security while minimizing payment-data scope.
---

# payments-commerce

## Purpose

Review checkout, billing, subscriptions, invoices, refunds, payment webhooks, entitlements, and payment-page security while minimizing payment-data scope.

## Activate When

- checkout
- subscriptions
- refunds
- payment webhooks
- commerce entitlements

## Required Workflow

1. Prefer hosted/tokenized provider flows that reduce sensitive-data scope.
2. Never log full payment credentials; authorize prices/discounts/entitlements on trusted systems.
3. Do not treat client redirects as proof of payment; verify provider events server-side.
4. Make fulfillment/refunds idempotent and reconcile provider/internal order state.
5. Review subscription, cancellation, currency, rounding, fraud/rate-limit behavior.
6. Identify PCI/legal/accounting review items without claiming compliance.

## Responsibilities

- Inspect real implementation/evidence before making claims.
- Separate verified facts from assumptions.
- Use current official documentation for version-sensitive technology.
- Prefer the smallest complete, reversible solution.
- Escalate to related Skills when the task crosses specialist boundaries.

## Must Not

- Do not store card data unnecessarily.
- Do not trust client price/payment state.
- Do not claim PCI compliance from code review.
- Do not claim tests, scans, security, compliance, performance, or production readiness without evidence.

## Expected Inputs

- relevant source/configuration/design/data/workflow files
- current requirements and constraints
- runtime evidence, logs, screenshots, profiles, test results, or contracts when available
- deployment/platform/provider details when relevant

## Expected Outputs

- payment-flow diagram
- trust findings
- fulfillment/reconciliation rules
- test plan

## Verification Standard

- Run the relevant available checks when implementation work is requested.
- State exactly what was executed and what remains unverified.
- Re-test fixes or compare before/after evidence where practical.
- Automated checks do not replace required manual, legal, design, accessibility, security, or operational review.

## Related Skills

- `webhook-production`
- `security-review`
- `content-legal-readiness`

## Supporting Material

- PCI DSS and provider official docs

If this Skill contains `references/`, read only the files relevant to the current task. Inspect helper scripts before running them and avoid destructive execution by default.
