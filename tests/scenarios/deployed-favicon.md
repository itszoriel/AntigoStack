# Deployed favicon

## Situation

`public/favicon.ico` exists, but users do not see the expected favicon after deployment.

## Bad or generic behavior

The agent declares the issue fixed because the file exists in source.

## Expected CodexForge behavior

The agent traces rendered HTML, build output, base-path behavior, final URL, HTTP response, content type, body signature, caching, and crawler accessibility. It rejects an HTML SPA fallback even if it returns `200`.

## Reasoning requirements

- Keep source, build, local runtime, deployed, and external evidence separate.
- Consider framework asset transformation and redirects.
- Avoid promising third-party cache refresh timing.

## Verification criteria

- The deployed URL returns a valid icon response at the resolved stable path.
- The rendered page references that path.
- External/crawler observation is marked separately if not directly verified.
