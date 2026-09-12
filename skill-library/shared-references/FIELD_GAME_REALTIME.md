# Game, Realtime, Multiplayer, and Technical Art Production — Professional Field Guide

## Core mental models
- frame budget and player experience as system constraints
- engine lifecycle/scene-object ownership
- simulation authority and deterministic/replicated state where required
- asset/content pipelines as part of runtime performance
- data-driven tuning and save/version compatibility
- platform/device constraints
- cheat resistance and server validation for competitive outcomes

## Questions experienced practitioners ask
- What is the target platform, frame time, memory and network budget?
- Who owns/spawns/destroys this object and when?
- Which state is authoritative and what can the client lie about?
- What asset/render/animation cost appears in profiler evidence?
- How are saves/content versions migrated?
- What is the gameplay consequence of latency, disconnect, exploit, or partial load?

## Diagnostic / implementation tools
- engine profiler/debugger and build logs
- network/replication diagnostics
- frame capture/GPU tools
- asset import/validation tools
- automated gameplay tests plus device playtests
- crash/telemetry analysis

## Common professional failure modes
- premature optimization without profiler data
- client-authoritative competitive results
- per-frame allocations/work hidden in convenience APIs
- high-fidelity assets ignoring platform budgets
- editor-only behavior assumed to match packaged builds
- save/network schema changed without compatibility plan

## Standard
Use the actual project context, current authoritative documentation, and the V5 evidence/verification rules. Treat this guide as a reasoning scaffold rather than a substitute for version-specific documentation.
