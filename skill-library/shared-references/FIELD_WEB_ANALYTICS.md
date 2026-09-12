# Web Analytics, Measurement, and Tagging — Professional Field Guide

## Core mental models
- measurement starts with a decision/question and event/metric definition, not with adding tags
- client events are observations that can be blocked, duplicated, delayed or manipulated; they are not always a source of truth
- event name, trigger condition, identity/session semantics, properties, consent state and deduplication define the metric
- analytics implementation must respect data minimization, consent/privacy requirements and retention/access boundaries
- validation requires observing real network/event payloads and downstream reporting, not only source code
- attribution and cross-device identity are modeling choices with uncertainty, not ground truth

## Questions experienced practitioners ask
- What product/business decision should this event or metric support?
- Exactly when should the event fire, once or multiple times, and what constitutes a duplicate?
- Which properties are necessary and which are sensitive/unnecessary?
- How do SPA navigation, retries, consent changes, blockers and offline behavior affect collection?
- Can reported totals be reconciled against an independent source where appropriate?
- What must be manually configured in the analytics/tag-manager account?

## Diagnostic / implementation tools
- browser network/devtools and provider debug views
- dataLayer/event payload inspection
- provider schema/debug/real-time reports
- consent-state and cookie/storage inspection
- warehouse/source reconciliation when available
- automated tests for stable event contracts where worthwhile

## Common professional failure modes
- event fires on render instead of confirmed action
- duplicate pageviews/events in SPA navigation
- PII/secrets included in analytics payloads
- tags fire before required consent state
- event names/properties drift without a measurement contract
- dashboards imply exact truth despite blockers/attribution limitations

## Standard
Use current provider documentation and applicable privacy requirements. Separate implementation verification from downstream provider processing and from business interpretation.
