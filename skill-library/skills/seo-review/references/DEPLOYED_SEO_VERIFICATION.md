# Deployed SEO Verification

For each material resource record SOURCE / BUILD / DEPLOYED / EXTERNAL status.

## Homepage metadata
Fetch/render the production homepage. Confirm final title, description, canonical, robots directives, structured data and icon/social declarations after framework rendering.

## Favicon
Resolve `rel=icon` from production HTML. Fetch it. Confirm non-HTML image response, square dimensions, supported format, stable URL and crawler access using current Google Search Central guidance. Technical eligibility does not guarantee Google display.

## robots.txt
Fetch the production `/robots.txt` (or intended location), confirm it is actual robots text rather than app HTML/404 fallback, and verify it does not accidentally block important pages/resources.

## Sitemap
Fetch every submitted/advertised sitemap URL, validate content, canonical production URLs and status, and ensure staging/local hosts are absent.

## Social/manifest/verification assets
Resolve and fetch Open Graph/Twitter images, web manifest/icons and provider verification files. Validate content type, public accessibility and correct production origin/base path.

## Canonical / structured URLs
Check rendered absolute/relative resolution, redirect chains, host/protocol consistency and whether referenced URLs actually resolve.
