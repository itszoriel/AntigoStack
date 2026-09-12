# Web runtime verification example

## Request

> Verify the deployed favicon for this web project. Trace the source declaration through the production build and public URL. Do not accept a `200` response if it is actually the SPA HTML fallback.

## Expected approach

1. Inspect the framework, base path, favicon source, and rendered metadata.
2. Build the production artifact and locate the emitted icon.
3. Serve the build locally and request the resolved URL.
4. Request the deployed URL and inspect redirects, `Content-Type`, and file signature.
5. Check crawler access where relevant.
6. Report SOURCE, BUILD, LOCAL RUNTIME, DEPLOYED, and EXTERNAL-OBSERVABLE levels separately.

The result should not promise that a search engine will refresh its favicon cache.
