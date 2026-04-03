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
  
  // Sitting: Správný postoj & Správné sezení (strukturované)
  static const List<Map<String, String>> sittingTips = [
    {
      'title': 'Správný postoj',
      'desc': 'Správný postoj představuje optimální nastavení jednotlivých částí těla vůči sobě tak, aby bylo zatížení rovnoměrně rozloženo a pohybový aparát pracoval co nejefektivněji. Při správném stoji dochází k udržení fyziologického zakřivení páteře, lepší stabilizaci trupu a menšímu přetěžování svalů, kloubů i vazivových struktur. Správné držení těla je důležité nejen pro prevenci bolestí zad a šíje, ale také pro kvalitní dýchání, stabilitu a celkovou koordinaci pohybu.',
      'jakNaTo': '• Hlava je v ose těla a v prodloužení páteře \n• Krční páteř je v neutrálním postavení \n• Ramena jsou uvolněná, lehce stažená dolů a dozadu \n• Hrudník je otevřený, ale ne přehnaně vysunutý vpřed \n• Páteř zachovává své přirozené zakřivení \n• Lopatky jsou uložené přirozeně, bez nadměrného předsunutí \n• Břicho a hluboký stabilizační systém jsou lehce aktivní \n• Pánev je v neutrálním postavení \n• Hmotnost těla je rozložena rovnoměrně na obě dolní končetiny \n• Kolena jsou uvolněná, bez přepnutí do záklonu \n• Chodidla směřují vpřed nebo mírně zevně a jsou přibližně na šířku pánve či ramen \n• Opora je rozložena rovnoměrně na celé plosky nohou',
      'pozor': '• Předsunuté držení hlavy \n• Kulatá ramena a zvětšené hrbení hrudní páteře \n• Nadměrné prohnutí v bederní oblasti \n• Podsazení nebo naopak přílišné vysazení pánve \n• Přenážení váhy více na jednu dolní končetinu \n• Přepínání kolen do krajní polohy \n• Vbočené nebo vytočené postavení chodidel \n• Dlouhodobé setrvávání v jedné statické poloze \n• Zadržování dechu a zbytečné napětí v oblasti šíje a ramen'
    },
    {
      'title': 'Správné sezení',
      'desc': 'Správný sed je důležitý pro zdravé držení těla a správnou funkci pohybového aparátu. Při vhodném nastavení těla se zátěž rozkládá rovnoměrně, což pomáhá snižovat přetížení páteře, svalů i kloubů. Samotné sezení sám o sobě není ten problém, potíže často vznikají až při dlouhodobém setrvávání v sedu bez změny polohy. Správné sezení proto spolu s pravidelným pohybem a krátkými přestávkami přispívá k prevenci bolestí zad, šíje a ramen.',
      'jakNaTo': '• Hlava je v prodloužení páteře \n• Krční páteř je v neutrálním postavení \n• Ramena jsou uvolněná a lehce stažená dolů \n• Záda jsou napřímená, s přirozeným zakřivením páteře \n• Pánev je v neutrálním postavení \n• Střed těla je lehce aktivní \n• Hýždě jsou opřené rovnoměrně o sedací plochu \n• Chodidla jsou celou plochou na podlaze \n• Kolena jsou přibližně v úhlu 90 stupňů \n• Kyčle jsou ve stejné nebo mírně vyšší úrovni než kolena \n• Předloktí mohou být volně opřená, bez zvedání ramen',
      'pozor': '• Předsunuté držení hlavy \n• Hrbení zad a kulatá ramena \n• Nadměrné prohnutí v bedrech \n• Podsazení pánve \n• Sezení na okraji židle bez opory \n• Překřížené nohy po dlouhou dobu \n• Neopřená chodidla \n• Dlouhé setrvávání v jedné poloze \n• Nadměrné napětí v oblasti šíje, ramen a beder'
    },
  ];

  // Exercises: Kompenzační cviky (na židli, podložka, sed)
  static const List<Map<String, String>> exercisesList = [
    // Cviky na židli
    {
      'title': 'Kočka–kráva na židli',
      'desc': 'Tento cvik pomáhá jemně rozhýbat páteř, uvolnit ztuhlost zad a podpořit lepší napřímení trupu. Střídá zakulacení a otevření hrudníku a dobře se hodí po delším sezení.',
      'jakNaTo': '• Sedni si vzpřímeně na židli \n• Chodidla opři celou plochou o zem \n• Obě paže natáhni před sebe \n• S výdechem podsazuj pánev, zakulať záda a bradu přibliž k hrudníku \n• Paže zůstávají natažené vpřed a pomáhají prohloubit zakulacení zad \n• S nádechem se vrať do napřímení, otevři hrudník a paže veď lehce za sebe \n• Pohyb několikrát plynule opakuj v návaznosti na dech',
      'pozor': '• Neprovádět pohyb rychle nebo švihově \n• Nezvedat ramena k uším \n• Nezaklánět hlavu příliš dozadu \n• Nepřehánět rozsah pohybu v bedrech \n• Nezadržovat dech \n• Pohyb provádět pomalu a kontrolovaně'
    },
    {
      'title': 'Rotace trupu na židli',
      'desc': 'Tento cvik pomáhá rozhýbat hrudní páteř, uvolnit horní část zad a zlepšit rotaci trupu. Je vhodný hlavně po delším sezení, kdy bývá střední část zad ztuhlá.',
      'jakNaTo': '• Sedni si vzpřímeně na židli \n• Chodidla opři celou plochou o zem \n• Pánev nech stabilní a záda napřímená \n• Jednou rukou se přidrž opěradla židle \n• Druhou ruku polož na stehno nebo ji nech volně podél těla \n• Pomalu otoč trup na jednu stranu \n• Chvíli v pozici setrvej a volně dýchej \n• Poté se vrať zpět do středu a vystřídej strany',
      'pozor': '• Nehrbit se během pohybu \n• Nevytáčet se švihově \n• Nezvedat ramena k uším \n• Nevytáčet pánev spolu s trupem \n• Nepřecházet přes bolest \n• Pohyb provádět pomalu a kontrolovaně'
    },
    {
      'title': 'Boční úklon na židli',
      'desc': 'Tento cvik pomáhá rozhýbat páteř do strany, protáhnout boční část trupu a uvolnit oblast žeber i svaly kolem páteře.',
      'jakNaTo': '• Sedni si vzpřímeně na židli \n• Chodidla opři celou plochou o zem \n• Paže nech volně podél těla \n• Jednu ruku pomalu posouvej po straně židle nebo po noze směrem dolů \n• Současně se ukláněj do stejné strany \n• Druhá strana trupu se přirozeně protahuje \n• Poté se vrať zpět do středu a vystřídej strany',
      'pozor': '• Nepředklánět se místo úklonu \n• Nevytáčet trup do rotace \n• Nezvedat ramena k uším \n• Nepřetahovat rozsah pohybu \n• Neprovádět pohyb švihově \n• Pohyb provádět pomalu a kontrolovaně'
    },
    // Cviky na podložce a další
    {
      'title': 'Kočičí hřbet',
      'desc': 'Tento cvik slouží k jemné mobilizaci celé páteře a pomáhá uvolnit napětí v oblasti zad, šíje i beder.',
      'jakNaTo': '• Výchozí poloha je na všech čtyřech \n• Dlaně jsou pod rameny, kolena pod kyčlemi \n• S výdechem pomalu vyhrb záda směrem ke stropu \n• Hlava směřuje dolů a pánev se lehce podsadí \n• S nádechem plynule přejdi do mírného prohnutí \n• Hrudník se otevírá, pohled směřuje lehce vpřed \n• Pohyb prováděj plynule a bez švihu',
      'pozor': '• Nepřecházet do bolestivého rozsahu \n• Neprovádět pohyb příliš rychle \n• Nepřetěžovat krční páteř záklonem hlavy \n• Ramena nevytahovat k uším'
    },
    {
      'title': 'Bird dog',
      'desc': 'Cvik podporuje stabilitu trupu, koordinaci a správné zapojení hlubokého stabilizačního systému.',
      'jakNaTo': '• Zaujmi polohu na všech čtyřech \n• Dlaně jsou pod rameny, kolena pod kyčlemi \n• Zpevni lehce střed těla \n• Natáhni jednu horní končetinu vpřed a opačnou dolní končetinu vzad \n• Pánev i trup zůstávají co nejvíce stabilní \n• Chvíli vydrž a pak se vrať zpět \n• Poté vystřídej strany',
      'pozor': '• Nevytáčet pánev do strany \n• Neprohýbat se v bedrech \n• Nevysouvat hlavu vpřed \n• Nepoužívat rychlý nebo švihový pohyb'
    },
    // ... další cviky (zkráceno pro přehlednost, plný seznam v kódu)
  ];

  // Other
  static const String contentComingSoon = 'Obsah bude doplněn.';
  static const String shopCta = 'Přejít do e-shopu';
  static const String backToHome = 'Zpět na úvod';
}

