# Internationalization and Localization — Professional Field Guide

## Core mental models
- internationalization is architecture that enables locales; localization is locale-specific content/adaptation
- locale is more than language: script, region, calendar, numbering, plural rules, collation, time zone and cultural conventions matter
- user-visible strings, data formats and layout direction should not be hardcoded to one locale
- identifiers/storage should remain stable while presentation is localized
- translation expansion, bidirectional text and font/glyph coverage are layout/system concerns
- machine translation can accelerate drafts but does not replace qualified review for consequential content

## Questions experienced practitioners ask
- Which locales/scripts/regions are actually supported and what fallback chain is intended?
- Are dates/times/numbers/currency/plurals formatted with locale-aware libraries rather than string concatenation?
- How are message keys, variables, gender/plural forms and missing translations handled?
- Does the UI survive text expansion, RTL/bidirectional content and different fonts?
- Are URLs, metadata, search signals and content negotiation aligned with locale strategy?
- Which translations require native-speaker/domain/legal review?

## Diagnostic / implementation tools
- Unicode/CLDR/ICU data and locale APIs
- pseudo-localization and text-expansion tests
- RTL/bidi layout tests
- missing-key/fallback instrumentation
- locale-specific date/number/plural test cases
- W3C Internationalization guidance

## Common professional failure modes
- using language code where region-specific behavior is required
- concatenating translated sentence fragments
- translating identifiers/database values that should remain stable
- assuming all languages fit English layout width or LTR flow
- treating time zone as locale
- silently falling back to the wrong language for critical text

## Standard
Use Unicode/CLDR and platform/framework locale capabilities. Preserve semantic meaning and require human review where translation quality has safety, legal, financial or brand consequences.
