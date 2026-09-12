# Mobile and Desktop Application Engineering — Professional Field Guide

## Core mental models
- application lifecycle and platform process model
- UI/main-thread rules and async cancellation
- local persistence, migration and offline behavior
- permissions, privacy and secure storage
- device/form-factor/accessibility differences
- signing, packaging, update and store distribution
- native interop and version compatibility

## Questions experienced practitioners ask
- Which OS/SDK/runtime versions and devices are supported?
- What lifecycle transition can interrupt this operation?
- What must remain on the UI thread?
- How does data survive upgrade, offline use, crash, or reinstall?
- Which permission/data declaration is actually necessary?
- How will signing/update/store behavior be verified?

## Diagnostic / implementation tools
- platform IDE/build tools and device/emulator logs
- profiler/crash reports
- accessibility inspectors
- package/signing/store validation tools
- network/storage inspectors and integration tests

## Common professional failure modes
- desktop/mobile lifecycle treated like a web page
- blocking UI thread
- unsafe local secrets
- migration paths untested across app versions
- designer/generated files hand-edited unnecessarily
- store policy assumptions frozen in code
- testing only one emulator/window size

## Standard
Use the actual project context, current authoritative documentation, and the V5 evidence/verification rules. Treat this guide as a reasoning scaffold rather than a substitute for version-specific documentation.
