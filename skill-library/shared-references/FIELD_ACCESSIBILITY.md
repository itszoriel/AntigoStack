# Accessibility Engineering — Professional Field Guide

## Core mental models
- accessibility is about actual task completion by people using different input/output modes, not scanner scores
- native semantics first; ARIA augments missing semantics and creates behavioral obligations
- keyboard interaction, focus order/visibility, names/roles/states, error recovery, reflow/zoom, contrast, motion and media are separate evidence lanes
- conformance claims require a defined scope, target standard/level, supported technologies, and manual evidence
- automated tools are useful defect finders but cannot establish full WCAG conformance
- accessibility defects can be introduced by component libraries, routing, hydration, overlays, animation and responsive behavior even when static markup looks correct

## Questions experienced practitioners ask
- What user task is blocked, and for which interaction/input/output mode?
- Is there a native HTML/platform control that already provides the required semantics and keyboard behavior?
- What receives focus when this component opens, changes state, errors, or closes?
- Does the accessible name match the visible purpose and remain stable across state changes?
- Does meaning survive zoom, reflow, high contrast/forced colors, reduced motion, and text enlargement?
- What did automated tooling find, and what still requires keyboard/screen-reader/manual review?

## Diagnostic / implementation tools
- browser accessibility tree and DevTools accessibility inspection
- keyboard-only walkthroughs and focus tracing
- representative screen-reader/manual assistive-technology checks when available
- axe/Lighthouse/other automated scanners as supporting evidence, never sole conformance evidence
- contrast/target-size/reflow checks
- W3C WCAG 2.2, Understanding documents, WAI-ARIA and APG

## Common professional failure modes
- adding ARIA instead of using a native element
- clickable `div`/`span` controls without keyboard semantics
- focus traps that do not restore focus or dialogs that do not contain focus correctly
- visually hidden labels that do not become accessible names
- automated scan passed, therefore "accessible"
- fixing color contrast while ignoring keyboard, errors, motion, zoom or reading order
- inaccessible custom authentication/CAPTCHA/drag-only interactions

## Standard
Use current W3C/WAI guidance and test the actual rendered interaction. Report what was manually tested versus inferred or scanner-detected. Do not claim full accessibility/compliance from automation alone.
