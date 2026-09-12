# Web Launch Readiness Checklist

## Legal / Policy Readiness
- Privacy policy exists when personal data is collected.
- Terms and conditions exist when appropriate.
- Cookie policy exists when applicable.
- Refund/cancellation policy exists for paid offerings where applicable.
- Contact/business details are accurate.
- Policy text matches actual implementation.
- No unsupported claim of legal compliance.
- Jurisdiction-specific items are flagged for legal review.

## Privacy / Tracking
- Inventory analytics, pixels, embeds, ad-tech, chat widgets, and SDKs.
- Non-essential tracking does not execute before required consent.
- Reject/manage preferences are available where required.
- Consent state persists correctly.
- Withdrawal/change of consent works.
- Collected data is necessary for stated purpose.
- Personal data is not unnecessarily logged.
- Third-party data sharing is identified.
- Retention/deletion behavior is documented where relevant.

## Security
- HTTPS on all production pages and APIs.
- HTTP redirects to HTTPS.
- No mixed-content requests.
- Secure cookie flags appropriate.
- No secrets in frontend bundles.
- No source maps exposing secrets or sensitive internals.
- CORS restricted appropriately.
- CSP/security headers reviewed where relevant.
- Auth/authorization server-side.
- File uploads validated.
- Forms and public endpoints rate-limited/abuse-protected.
- Dependencies reviewed.

## SEO
- Unique, meaningful title on important pages.
- Meta descriptions.
- Canonical URLs.
- robots.txt.
- sitemap.xml.
- Correct index/noindex.
- Redirects correct.
- Structured data valid and truthful.
- Open Graph/Twitter metadata.
- Favicon/icons.
- Internal links work.
- No accidental staging URLs.

## Accessibility
- Semantic HTML.
- Logical headings.
- Form labels.
- Accessible names on controls.
- Keyboard navigation.
- Visible focus.
- Modal/dialog focus management.
- Color contrast.
- Alt text for meaningful images.
- Decorative images use empty alt.
- Error messages understandable.
- Touch targets reasonable.
- Reduced motion honored where appropriate.

## Performance
- LCP/INP/CLS reviewed.
- Oversized images removed/compressed.
- Responsive images used where appropriate.
- Lazy loading used appropriately.
- Fonts optimized.
- JS bundle reviewed.
- Third-party scripts justified.
- Caching/CDN configured.
- Layout shifts minimized.

## Responsive / Browser
- 320px, 360px, 375px, 390px, 414px widths.
- Tablet sizes.
- Desktop sizes.
- No horizontal overflow.
- Navigation usable.
- Tables/forms/modals usable on small screens.
- iOS Safari behavior checked for important flows.
- Chrome/Edge/Firefox/Safari coverage chosen based on audience.

## Forms / Abuse
- Client-side validation.
- Server-side validation.
- Required, length, format, and bounds checks.
- Duplicate submission prevention.
- Clear error/success states.
- Spam controls.
- Rate limits.
- CAPTCHA/Turnstile only where justified.
- CSRF protection where applicable.
- File uploads restricted by type/size/content and stored safely.

## Reliability / UX
- Custom 404.
- 500/error state.
- Network failure state.
- Loading/empty states.
- Broken links removed.
- Broken anchors/routes fixed.
- Browser console errors reviewed.
- API errors handled.
- Primary CTA is clear.
- Buttons use specific labels.
- Destructive actions require appropriate confirmation.

## Content Integrity
- No fake testimonials.
- No fake review counts.
- No fabricated awards.
- No unsupported statistics.
- No invented customers/partners.
- No false government/business affiliation.
- Images/fonts/icons/media have appropriate rights/license.
- Placeholder content removed.

## Analytics
- Production analytics ID.
- No duplicate tracking.
- Consent integration correct.
- PII not sent unnecessarily.
- Critical events verified.
- Internal/admin traffic treatment considered.

## Deployment / Operations
- Production env vars validated.
- Secrets stored in platform secret manager.
- DNS/TLS validated.
- Correct production API URLs.
- CORS origins correct.
- Health checks.
- Logging/error tracking.
- Monitoring/alerts.
- Backups when persistent data exists.
- Rollback path.
- Post-deploy smoke test.

## Final Decision
Use:
- GO
- CONDITIONAL GO
- NO-GO

A CRITICAL issue normally means NO-GO.
HIGH issues normally require remediation before public launch unless explicitly risk-accepted.


## Deployed Public-Resource Verification (V5)
- Do not mark a public resource PASS from source presence alone.
- Inspect rendered production HTML where the framework transforms metadata.
- Resolve and fetch the production favicon URL; reject HTML/SPA fallback responses.
- Fetch robots.txt and sitemap.xml from the deployed hostname and validate actual content.
- Fetch social images, manifest/icons and verification files when relevant.
- Validate canonical/structured-data URLs against production origin and redirects.
- Record SOURCE / BUILD / LOCAL RUNTIME / DEPLOYED / EXTERNAL-OBSERVABLE status.
- External search/social cache adoption remains separate and may require time/manual provider tools.
