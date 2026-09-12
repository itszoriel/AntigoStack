# Web Runtime / Public Resource Verification

Do not treat repository presence as public availability.

For favicons, robots.txt, sitemap.xml, social images, manifests/icons, canonical URLs, structured-data URLs, verification files, redirects, and downloads:

1. locate the source declaration/file
2. inspect build behavior and output path
3. inspect rendered HTML/config rather than only source templates when a framework transforms them
4. resolve the final public URL using production origin/base path
5. request the deployed URL
6. validate HTTP status, redirects, content type, and body/file signature
7. reject SPA/HTML fallback responses masquerading as assets
8. check crawler/access controls when relevant
9. validate format/dimensions/schema/content requirements
10. distinguish technical eligibility from external-provider adoption/processing

For Google Search favicons specifically, use current Google Search Central guidance; do not promise display or recrawl timing.
