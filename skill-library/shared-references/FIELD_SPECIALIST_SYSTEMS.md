# Embedded, Robotics, XR, Blockchain, HPC, and Specialist Systems — Professional Field Guide

## Core mental models
- hardware/platform constraints and failure modes
- timing, concurrency, resource budgets and determinism where relevant
- protocol/specification compliance
- safety/security boundaries around physical or irreversible effects
- simulation/testbench versus real-world validation
- portability and vendor/toolchain versions

## Questions experienced practitioners ask
- What hardware/runtime/protocol/version is actually targeted?
- What timing, power, memory, latency or safety bound matters?
- What behavior differs between simulator/testnet/emulator and real system?
- What is irreversible or costly if wrong?
- Which specification or vendor document is authoritative?

## Diagnostic / implementation tools
- vendor SDK/debug/profiler tools
- protocol analyzers/spec validators
- simulators/testnets/emulators plus real target validation
- hardware/resource counters
- fault-injection and recovery tests where safe

## Common professional failure modes
- assuming simulator equals hardware/production
- ignoring resource/timing budgets
- unsafe defaults around keys/actuators/physical effects
- protocol details guessed from memory
- vendor/version mismatch
- performance claims without target-hardware measurements

## Standard
Use the actual project context, current authoritative documentation, and the V5 evidence/verification rules. Treat this guide as a reasoning scaffold rather than a substitute for version-specific documentation.
