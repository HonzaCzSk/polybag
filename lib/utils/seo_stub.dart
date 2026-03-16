// Stub for non-web platforms (Windows, Android, iOS)
// SEO has no effect outside of a browser.
class SeoHelper {
  static void set({required String title, required String description}) {
    // No-op on non-web platforms
  }
}
