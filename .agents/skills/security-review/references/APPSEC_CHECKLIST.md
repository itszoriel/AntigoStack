# Application Security Review Checklist

## Authentication
- password storage
- password reset
- MFA where appropriate
- session fixation
- brute-force protections
- account enumeration
- email/phone verification flow
- OAuth/OIDC redirect handling
- token expiration/revocation

## Authorization
- object-level authorization
- function-level authorization
- tenant boundaries
- admin boundaries
- ownership checks
- server-side enforcement
- privilege escalation

## Input / Output
- SQL/NoSQL injection
- command injection
- template injection
- XSS
- path traversal
- unsafe deserialization
- SSRF
- XML/parser hazards where relevant
- output encoding

## Browser Security
- CSRF
- CORS
- cookies
- CSP
- clickjacking
- HTTPS
- mixed content
- sensitive caching

## Files
- type/size/content validation
- random storage names
- executable content
- image/document processing
- path traversal
- private/public storage boundaries
- malware scanning where risk warrants it

## API Abuse
- rate limits
- replay
- idempotency
- scraping/automation abuse
- resource exhaustion
- pagination limits
- expensive query controls

## Secrets
- source code
- frontend bundles
- CI logs
- environment variables
- secret rotation
- third-party credentials

## Data
- encryption in transit
- encryption at rest where appropriate
- data minimization
- sensitive logs
- backup access
- deletion/retention
- multitenancy isolation

## Supply Chain
- dependency advisories
- lockfiles
- CI action pinning
- package provenance
- build artifacts
- container images
