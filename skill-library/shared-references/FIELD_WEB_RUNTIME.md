# Web Runtime and Public-Resource Verification — Professional Field Guide

## Core mental models
- repository path, build output path, runtime route and public URL are different objects
- an HTTP status code alone does not prove the response is the intended resource
- bundlers/frameworks may hash, relocate, inline, optimize or omit assets
- SPA fallback/rewrites can make missing resources return HTML with 200 status
- CDN/browser/search/social caches introduce an additional externally observed state
- external systems can have eligibility rules and processing delays beyond the site's control

## Questions experienced practitioners ask
- Where is this resource declared in source and what transforms it during build?
- What exact URL does rendered production output reference?
- What does that deployed URL return: status, redirect chain, content type, bytes/body signature and cache headers?
- Can the intended external client/crawler access it?
- Does it meet resource-specific format/dimension/schema/host requirements?
- Which result is technically verified versus awaiting external-provider recrawl/cache processing?

## Diagnostic / implementation tools
- production build output inspection
- curl/HTTP clients with headers/redirects/body checks
- browser rendered DOM/network inspection
- file signature/dimension/schema validators
- robots/crawler-access checks
- provider-specific inspection/debug tools when available

## Common professional failure modes
- file exists in `public/` or `src/` therefore production works
- 200 HTML fallback mistaken for an image/XML/verification file
- stale hashed asset referenced after deploy
- base-path/canonical-host mismatch
- cache makes local fix appear ineffective or old asset persist
- promising search/social provider display after only technical repair

## Standard
Report SOURCE → BUILD → LOCAL RUNTIME → DEPLOYED → EXTERNAL-OBSERVABLE separately. Never promote a lower evidence level into a stronger claim.
