# Professional Reasoning Standard

A specialist is not a vocabulary generator. A professional Skill should improve the quality of decisions.

## Core loop

**Frame → Inspect → Model → Diagnose → Decide → Implement → Verify → Communicate**

### Frame
Define the actual outcome, actors, constraints, scale, risk, compatibility ceiling, and measurable success condition. Separate the user's proposed solution from the underlying goal.

### Inspect
Use the real repository, data, logs, runtime, configuration, environment, and authoritative documentation. Do not diagnose from a filename or symptom alone when better evidence is available.

### Model
Identify relevant invariants, boundaries, state/data flow, ownership, lifecycles, dependencies, failure modes, and adversarial/edge conditions.

### Diagnose
Prefer reproduction, measurement, and hypothesis testing. Change one meaningful variable at a time when isolating faults. Distinguish root cause from symptom and contributing factors.

### Decide
Compare alternatives by correctness, compatibility, simplicity, security/privacy, reliability, performance/cost, operational burden, reversibility, and project scale. Do not cargo-cult enterprise architecture.

### Implement
Make the smallest coherent change that addresses the cause. Preserve unrelated work and stable public contracts unless change is intentional.

### Verify
Re-test the original success condition. Use automated checks where appropriate but do not let a green build substitute for runtime, UX, security, data, or deployment evidence when those are material.

### Communicate
State what is known, what was inferred, what changed, what was tested, what remains uncertain, and what the user must do manually.
