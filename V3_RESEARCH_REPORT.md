# Codex Engineering System V3 — Breadth Expansion Research Report

Date: 2026-09-09

## Executive conclusion

V2 was broad by domain, but it could still be interpreted through a small set of familiar stacks.
V3 is explicitly **technology-neutral and ecosystem-aware**.

The new rule is:

> Inspect the project first; then load the language/framework/platform Skills that match the actual stack.

A web task is no longer implicitly React + TypeScript. Valid repositories can use standards-based HTML/CSS/JavaScript, TypeScript, PHP/Laravel/Symfony, Python/Django/FastAPI/Flask, Java/Spring, C#/ASP.NET, Ruby/Rails, Node, WordPress, GraphQL, gRPC, WebAssembly, WebRTC, and more.

Game development is no longer Unity-centered. V3 explicitly supports Unity, Unreal, Godot, engine-independent gameplay systems, AI/navigation, animation, audio, economy/live ops, platform release, ECS/data-oriented architecture, 3D/DCC pipelines, XR, and profiling.

## Evidence from current ecosystem research

- Stack Overflow's 2025 Developer Survey covers hundreds of technologies across languages, databases, cloud tooling, web frameworks, AI, IDEs, and developer roles.
- GitHub Octoverse 2025 reports a mixed language ecosystem: TypeScript became #1 by contributor count, while Python, JavaScript, Java, C#, PHP, Shell, C++, HCL, and Go also remain prominent.
- MDN treats HTML/CSS/JavaScript as the standards-based client foundation while explicitly listing ASP.NET/C#, Django/Python, Laravel/PHP, and Next.js/JavaScript as examples of server-side ecosystems.
- MDN's WebAssembly documentation demonstrates that web software can include languages such as C/C++/Rust and others compiled to Wasm.
- Godot's official docs support GDScript and C#, with C++ integration for performance-oriented extensions, reinforcing multi-language game development.
- NIST NICE models cybersecurity as many work roles and competency areas rather than one generic security role.
- Official ecosystems such as OpenXR, ROS 2, Power Automate, Microsoft Graph, Maya, and Houdini show professional technology work well beyond ordinary app coding.

## V3 changes

1. Added `technology-skill-router`.
2. Added major programming-language Skills.
3. Added framework/protocol web/backend Skills.
4. Added native/cross-platform mobile and desktop Skills.
5. Added spreadsheet/BI/statistics/data-science/ML/MLOps specialties.
6. Added multiple database families beyond PostgreSQL.
7. Added provider-specific cloud plus real IT/sysadmin/networking work.
8. Added defensive cybersecurity operations specialties.
9. Expanded game development for Unreal, Godot, and engine-independent production systems.
10. Expanded creative work for DCC/design/media/CAD/photogrammetry.
11. Added XR, IoT/embedded, robotics, enterprise platforms, RPA/low-code, blockchain, and GPU/HPC.
12. Updated global AGENTS.md to prohibit stack assumptions and to route selectively.
13. Added conflict transparency: if a Skill blocks/diverts work, Codex should identify the exact Skill and explain why.

## Scale

- V2 Skills: 76
- New V3 Skills: 116
- V3 total Skills: 192

## Research source families

OpenAI Codex/model guidance; Stack Overflow Developer Survey; GitHub Octoverse; MDN/W3C/WHATWG; official language/framework documentation; NIST/NICE; OWASP; AWS/Azure/GCP; Kubernetes; Android/Apple; Unreal/Godot/Unity; Blender/Autodesk/SideFX/Adobe; OpenXR; ROS 2; Power Automate/UiPath; Microsoft Graph/Google Workspace/ServiceNow/Salesforce/SAP; Apache Spark/Airflow; PyTorch/TensorFlow/scikit-learn/MLflow.

## Architecture caution

A large Skill library is useful only if routing stays selective. V3 therefore uses progressive disclosure and instructs Codex not to activate unrelated Skills. The router exists specifically to prevent the library from becoming a giant always-loaded checklist.
