# PolyBag – Aplikace

> PWA aplikace pro zdravé sezení, kompenzační cvičení a produkty PolyBag.

**Live:** [polybag.cz/app](https://polybag.cz/app/) &nbsp;|&nbsp; **Web:** [polybag.cz](https://polybag.cz)

---

## O aplikaci

Mobilní PWA (Progressive Web App) vytvořená ve Flutteru jako doplněk k e-shopu [polybag.cz](https://polybag.cz). Aplikace nabízí:

| Sekce | Obsah |
|---|---|
| 🪑 **Jak správně sedět** | Tipy na ergonomii, čemu se vyhnout |
| 🏋️ **Kompenzační cvičení** | Cviky pro zdravá záda a správné držení těla |
| 🛍️ **Nabídka produktů** | Podsedáky a sedací pytle z recyklovaných bigbagů |
| ℹ️ **O nás** | Příběh značky, kontakt, sociální sítě |

Produkty jsou vyráběny v chráněné dílně **[Daneta](https://www.daneta.cz)** v Hradci Králové.

---

## Tech stack

- **Framework:** Flutter 3.x (web target)
- **Routing:** go_router
- **PWA:** manifest.json, service worker
- **Hosting:** polybag.cz/app/ (WordPress subdirectory)

---

## Vývoj

### Požadavky

- Flutter SDK ≥ 3.0.0
- Dart ≥ 3.0.0

### Spuštění lokálně

```bash
git clone https://github.com/HonzaCzSk/polybag.git
cd polybag
flutter pub get
flutter run -d chrome
```

### Build pro produkci

```bash
flutter build web --web-renderer html --base-href /app/
```

Výstup je ve složce `build/web/` — nahraj obsah na server do `polybag.cz/app/`.

---

## Struktura projektu

```
lib/
├── main.dart          # Entry point
├── app.dart           # GoRouter konfigurace
├── theme.dart         # Brand barvy a Material 3 téma
├── screens/
│   ├── sitting_screen.dart     # Jak správně sedět
│   ├── exercises_screen.dart   # Kompenzační cvičení
│   ├── products_screen.dart    # Nabídka produktů
│   └── about_screen.dart       # O nás
└── widgets/
    └── nav_shell.dart          # Bottom navigation bar
web/
└── manifest.json      # PWA konfigurace
```

---

## Barvy

Aplikace používá barvy shodné s webem [polybag.cz](https://polybag.cz):

| Název | Hex | Použití |
|---|---|---|
| Primary | `#40CDBB` | AppBar, tlačítka, aktivní ikony |
| Background | `#FFFFFF` | Pozadí |
| Secondary | `#D6F5F1` | Karty, rámy |
| Text | `#515151` | Základní text |
| Subtext | `#767676` | Popisky, ikony |

---

## Licence

MIT © [PolyBag](https://polybag.cz)
