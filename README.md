# PolyBag – Aplikace

> PWA aplikace pro zdravé sezení, kompenzační cvičení a produkty PolyBag.

**Live:** [polybag.cz/app](https://polybag.cz/app/) &nbsp;|&nbsp; **Web:** [polybag.cz](https://polybag.cz)

---

## O aplikaci

Mobilní PWA (Progressive Web App) vytvořená ve Flutteru jako doplněk k e-shopu [polybag.cz](https://polybag.cz). Aplikace nabízí:

| Sekce | Obsah |
| --- | --- |
| 🪑 **Jak správně sedět** | 6 ergonomických tipů s obrázky (nohy na zemi, záda rovná...) |
| 🏋️ **Kompenzační cvičení** | 6 cviků pro záda (kočičí hřbet, mostek...) s popisy |
| 🛍️ **Nabídka produktů** | Link na e-shop PolyBag |
| ℹ️ **O nás** | Příběh, kontakt, sociální sítě |
| 🏠 **Domů** | Atrakitivní menu karty |

Produkty jsou vyráběny v chráněné dílně **[Daneta](https://www.daneta.cz)** v Hradci Králové.

---

## Tech stack

- **Framework:** Flutter 3.x (web target)
- **Routing:** go_router
- **PWA:** manifest.json, service worker cache-busting
- **Images:** cached_network_image
- **Tests:** Widget tests
- **i18n ready:** Constants structure

---

## Vývoj & PWA Install

### Požadavky

- Flutter SDK ≥ 3.0.0

### Spuštění lokálně

```bash
flutter pub get
flutter run -d chrome
```

### PWA Install to Desktop

1. Open in Chrome/Edge: `flutter run -d chrome`
2. Click ⋮ > "Install PolyBag App" or "Install as app"
3. App installs as standalone desktop PWA!

### Build for Production

```bash
flutter build web --web-renderer html --base-href /app/
```

Upload `build/web/` to polybag.cz/app/.

---

## Struktura projektu

```lib/
├── main.dart          # Entry point
├── app.dart           # Router
├── theme.dart         # Material 3 brand theme
├── utils/             # constants.dart (strings/data)
├── screens/           # 4x complete screens
└── widgets/nav_shell.dart

test/                  # Widget tests
web/                   # PWA manifest/index.html
```

---

## Licence

MIT © [PolyBag](https://polybag.cz)
