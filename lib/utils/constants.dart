// Central constants for strings - enables future localization

class PolyBagStrings {
  // Titles
  static const String appTitle = 'PolyBag';
  static const String healthySitting = 'Zdravé sezení';
  
  // Screens
  static const String whatInterestsYou = 'Co tě zajímá?';
  static const String correctSitting = 'Jak správně sedět';
  static const String sittingSubtitle = 'Ergonomie a tipy';
  static const String exercises = 'Kompenzační cvičení';
  static const String exercisesSubtitle = 'Cviky pro záda';
  static const String products = 'Nabídka produktů';
  static const String productsSubtitle = 'Podsedáky a pytle';
  static const String about = 'O nás';
  static const String aboutSubtitle = 'Příběh PolyBag';
  
  // Sitting tips (new content)
  static const List<Map<String, String>> sittingTips = [
    {
      'title': 'Nohy na zemi',
      'desc': 'Kolena v úhlu 90°, chodidla plně na zemi. Pokud nejde, použij podnožku.',
    },
    {
      'title': 'Záda rovná',
      'desc': 'Opěrka zad podél páteře. Nehrb se, použij bederní vycpávku.',
    },
    {
      'title': 'Lokty v 90°',
      'desc': 'Předloktí rovná na stole, ramena uvolněná.',
    },
    {
      'title': 'Pohled dopředu',
      'desc': 'Obrazovka v úrovni očí, 50-70 cm od tváře.',
    },
    {
      'title': 'Přestávky',
      'desc': 'Každých 30 min vstaň, protáhni se 20s. Pravidlo 20-20-20.',
    },
    {
      'title': 'Hydratace',
      'desc': 'Pij vodu – dehydratace zhoršuje koncentraci a bolest zad.',
    },
  ];

  // Exercises (new content)
  static const List<Map<String, String>> exercisesList = [
    {
      'title': 'Kočičí hřbet',
      'desc': 'Na všech čtyřech. Nádych - prohnout záda dolů, výdech - zaoblený hřbet. 10x.',
    },
    {
      'title': 'Protáhnutí hrudníku',
      'desc': 'Sedící. Ruce za zády, pro ten záda. Drž 20s, 5x.',
    },
    {
      'title': 'Rotace trupu',
      'desc': 'Sedící. Ruka na opaku klína, otoč trup. 10x na stranu.',
    },
    {
      'title': 'Mostek',
      'desc': 'Ležmo, nohy pokrčené. Zvedni pánev, stlač hýždě. 12x.',
    },
    {
      'title': 'Protáhnutí krku',
      'desc': 'Ucho k rameni, jemný tlak rukou. 20s na stranu.',
    },
    {
      'title': 'Otřepání',
      'desc': 'Postav se, protřep šíjí, ramena, ruce. 30s.',
    },
  ];

  // Other
  static const String contentComingSoon = 'Obsah bude doplněn.';
  static const String shopCta = 'Přejít do e-shopu';
  static const String backToHome = 'Zpět na úvod';
}

