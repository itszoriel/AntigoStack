# Web Performance Engineering — Professional Field Guide

## Core mental models
- optimize measured user-visible bottlenecks, not generic scores
- network, server, main-thread, rendering, memory and third-party costs are distinct bottleneck classes
- lab tests, field/RUM data and production traces answer different questions
- Core Web Vitals are useful user-experience signals but do not replace product-specific latency/interaction goals
- caching, compression, code splitting and image/font strategy can trade freshness/complexity against speed
- performance changes must preserve correctness, accessibility, SEO and visual behavior

## Questions experienced practitioners ask
- Which user journey/device/network is slow and what metric demonstrates it?
- Is delay from backend/TTFB, transfer size, JavaScript execution, rendering/layout, image/font loading or third parties?
- Does the problem exist in field data, lab reproduction, or both?
- What is on the critical rendering/interaction path?
- Will this optimization alter caching correctness, hydration, accessibility or observability?
- What before/after evidence proves a material improvement?

## Diagnostic / implementation tools
- browser Performance/Network/Memory panels
- Lighthouse and Web Vitals as supporting evidence
- bundle analyzers and coverage tools
- server/APM traces and RUM when available
- image/font compression and format inspection
- throttled representative-device tests

## Common professional failure modes
- optimizing a score without reproducing the user's bottleneck
- lazy-loading critical above-the-fold resources blindly
- huge JS bundles caused by dependency/import patterns
- layout shifts from unsized media/fonts
- cache rules that serve stale/private content incorrectly
- removing functionality/accessibility just to improve metrics

## Standard
Measure before and after on representative conditions. Prefer the smallest change addressing the dominant bottleneck and report trade-offs and measurement limitations.
