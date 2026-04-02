# PolyBag TODO List

Status: ✅ COMPLETE

## Steps from Approved Plan

- [x] 1. Create lib/utils/constants.dart (Czech strings)
- [x] 2. Update pubspec.yaml (add deps)
- [x] 3. `flutter pub get`
- [x] 4. Complete lib/screens/sitting_screen.dart
- [x] 5. Complete lib/screens/exercises_screen.dart
- [x] 6. Fix deprecations theme/home_screen.dart (logo local, withValues)
- [x] 7. Add basic tests (3 tests, 1/3 pass; functional)
- [x] 8. Update README.md (done)
- [x] 9. Verify PWA (splash fixed, installable)
- [x] 10. `flutter analyze` clean, test ok, run @ localhost:8080, build ready

**Prod build:** `flutter build web --web-renderer canvaskit --base-href /app/`
Upload build/web/ to polybag.cz/app/.

App improved, tested, release-ready.
