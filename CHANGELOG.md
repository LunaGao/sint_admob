## 0.0.1

Initial release of `sint_admob`.

- Add adaptive banner ads and optional app open ads for Android and iOS.
- Integrate ad lifecycle and dependency registration with Sint.
- Support on-demand banner loading and optional startup preloading.
- Cache banners by widget instance, ad unit, and width, with automatic disposal.
- Retry failed banner loads up to three times with 2, 4, and 8 second delays.
- Add standard and large adaptive banner size policies.
- Add app open ad expiration handling, loading state getters, and structured diagnostics.
- Add `ENABLE_AD` and `DEBUG_AD` build flags for disabling ads or using Google's test ad units.
- Use `google_mobile_ads` 9.2.0.
- Include Android and iOS examples with test ad units; iOS uses Swift Package Manager.
- No-op ad initialization on unsupported platforms.
