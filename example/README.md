# sint_admob example

Demonstrates adaptive banner ads, optional app open ads, diagnostics, and Sint routing on Android and iOS.

## Run

```bash
flutter pub get
flutter run --dart-define=DEBUG_AD=true
```

The example uses Google's AdMob test application IDs and test ad units. `DEBUG_AD=true` forces test ad units even if the configured units are replaced.

To run with ads disabled:

```bash
flutter run --dart-define=ENABLE_AD=false
```

Replace the application IDs and ad units with your own values only when testing a production configuration. Do not click live ads during development.
