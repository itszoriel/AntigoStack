# Programming Language and Runtime Engineering — Professional Field Guide

## Core mental models
- language semantics and type/value model
- memory/resource ownership and lifetime
- concurrency/async model
- error/exception model
- module/package/build system
- runtime/compiler/version compatibility
- FFI/interoperability and deployment behavior

## Questions experienced practitioners ask
- Which exact language/compiler/runtime version is pinned?
- What semantics are easy to misread in this language?
- Who owns resources and when are they released?
- What happens under concurrency, cancellation, failure, and partial execution?
- What build/runtime warnings reveal correctness or portability risks?

## Diagnostic / implementation tools
- official language/compiler documentation
- package manager and lockfile tooling
- compiler warnings and static analyzers
- debugger, sanitizer/profiler where applicable
- unit/property/integration tests

## Common professional failure modes
- using syntax/APIs newer than the project supports
- translating idioms from another language incorrectly
- suppressing warnings instead of understanding them
- resource leaks or unsafe ownership
- assuming successful compilation proves intended semantics

## Standard
Use the actual project context, current authoritative documentation, and the V5 evidence/verification rules. Treat this guide as a reasoning scaffold rather than a substitute for version-specific documentation.
