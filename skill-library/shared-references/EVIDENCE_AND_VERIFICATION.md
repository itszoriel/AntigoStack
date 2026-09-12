# Evidence and Verification

## Evidence labels

- VERIFIED FACT — directly observed.
- SUPPORTED INFERENCE — strongly implied but not directly observed.
- ASSUMPTION — working premise.
- RECOMMENDATION — professional judgment.
- UNKNOWN — insufficient evidence.
- MANUAL VERIFICATION REQUIRED — unavailable through current tools/access.

## Verification ladder

For source-to-production work, distinguish:

1. Source verified
2. Build verified
3. Local runtime verified
4. Deployed verified
5. External-observable verified

Never claim a higher level from a lower-level check.

## Completion discipline

A test passing proves only what that test actually exercises. Static analysis does not prove runtime behavior. A production build does not prove deployment. A deployed endpoint returning 200 does not prove business correctness. Automated accessibility/security scans do not prove full conformance/security.
