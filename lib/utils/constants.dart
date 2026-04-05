// Central constants for strings - enables future localization

class PolyBagStrings {

  // Video Titles
  static const String birdDog = 'bird_dog';
  static const String bocniUklonNaZidli = 'bocni_uklon_na_zidli';
  static const String bocniUklon = 'bocni_uklon';
  static const String kociciHrbet = 'kocici_hrbet';

  static const String podsazeniPanve = 'podsazeni_panve';
  static const String poziceDitete = 'pozice_ditete';
  static const String pritahovaniKolena = 'pritahovani_kolena';
  static const String rotaceHrudnikuSPokladanimPaze = 'rotace_hrudniku_s_pokladanim_paze';
  static const String rotaceHrudnikuVKlece = 'rotace_hrudniku_v_klece';
  static const String rotaceTrupuNaZidli = 'rotace_trupu_na_zidli';
  static const String twist = 'twist';

  static const String spravneSezeni = 'spravne_sezeni';
  static const String spravnyPostoj = 'spravny_postoj';

  static const String uvolneniDoRotace = 'uvolneni_do_rotace';

  // Titles
  static const String appTitle = 'PolyBag';
  static const String healthySitting = 'Zdravé sezení';
  
  // Screens
  static const String whatInterestsYou = 'Co tě zajímá?';
  static const String correctSitting = 'Správné držení těla';
  static const String sittingSubtitle = 'Ergonomie a tipy';
  static const String exercises = 'Kompenzační cvičení';
  static const String exercisesSubtitle = 'Cviky pro záda';
  static const String products = 'Nabídka produktů';
  static const String productsSubtitle = 'Podsedáky a pytle';
  static const String about = 'O nás';
  static const String aboutSubtitle = 'Příběh PolyBag';

  // Sitting: Správný postoj & Správné sezení
  static const List<Map<String, String>> sittingTips = [
    {
      'title': 'Správný postoj',
      'desc': 'Správný postoj představuje optimální nastavení jednotlivých částí těla vůči sobě tak, aby bylo zatížení rovnoměrně rozloženo a pohybový aparát pracoval co nejefektivněji. Při správném stoji dochází k udržení fyziologického zakřivení páteře, lepší stabilizaci trupu a menšímu přetěžování svalů, kloubů i vazivových struktur. Správné držení těla je důležité nejen pro prevenci bolestí zad a šíje, ale také pro kvalitní dýchání, stabilitu a celkovou koordinaci pohybu.',
      'jakNaTo': '• Hlava je v ose těla a v prodloužení páteře\n• Krční páteř je v neutrálním postavení\n• Ramena jsou uvolněná, lehce stažená dolů a dozadu\n• Hrudník je otevřený, ale ne přehnaně vysunutý vpřed\n• Páteř zachovává své přirozené zakřivení\n• Lopatky jsou uložené přirozeně, bez nadměrného předsunutí\n• Břicho a hluboký stabilizační systém jsou lehce aktivní\n• Pánev je v neutrálním postavení\n• Hmotnost těla je rozložena rovnoměrně na obě dolní končetiny\n• Kolena jsou uvolněná, bez přepnutí do záklonu\n• Chodidla směřují vpřed nebo mírně zevně a jsou přibližně na šířku pánve či ramen\n• Opora je rozložena rovnoměrně na celé plosky nohou',
      'pozor': '• Předsunuté držení hlavy\n• Kulatá ramena a zvětšené hrbení hrudní páteře\n• Nadměrné prohnutí v bederní oblasti\n• Podsazení nebo naopak přílišné vysazení pánve\n• Přenážení váhy více na jednu dolní končetinu\n• Přepínání kolen do krajní polohy\n• Vbočené nebo vytočené postavení chodidel\n• Dlouhodobé setrvávání v jedné statické poloze\n• Zadržování dechu a zbytečné napětí v oblasti šíje a ramen'
    },
    {
      'title': 'Správné sezení',
      'desc': 'Správný sed je důležitý pro zdravé držení těla a správnou funkci pohybového aparátu. Při vhodném nastavení těla se zátěž rozkládá rovnoměrně, což pomáhá snižovat přetížení páteře, svalů i kloubů. Samotné sezení sám o sobě není ten problém, potíže často vznikají až při dlouhodobém setrvávání v sedu bez změny polohy. Správné sezení proto spolu s pravidelným pohybem a krátkými přestávkami přispívá k prevenci bolestí zad, šíje a ramen.',
      'jakNaTo': '• Hlava je v prodloužení páteře\n• Krční páteř je v neutrálním postavení\n• Ramena jsou uvolněná a lehce stažená dolů\n• Záda jsou napřímená, s přirozeným zakřivením páteře\n• Pánev je v neutrálním postavení\n• Střed těla je lehce aktivní\n• Hýždě jsou opřené rovnoměrně o sedací plochu\n• Chodidla jsou celou plochou na podlaze\n• Kolena jsou přibližně v úhlu 90 stupňů\n• Kyčle jsou ve stejné nebo mírně vyšší úrovni než kolena\n• Předloktí mohou být volně opřená, bez zvedání ramen',
      'pozor': '• Předsunuté držení hlavy\n• Hrbení zad a kulatá ramena\n• Nadměrné prohnutí v bedrech\n• Podsazení pánve\n• Sezení na okraji židle bez opory\n• Překřížené nohy po dlouhou dobu\n• Neopřená chodidla\n• Dlouhé setrvávání v jedné poloze\n• Nadměrné napětí v oblasti šíje, ramen a beder'
    }
  ];

  // Kompenzační cviky - VŠECHNA z textu
  static const List<Map<String, String>> exercisesList = [
    {
      'title': 'Kočka–kráva na židli',
      'desc': 'Tento cvik pomáhá jemně rozhýbat páteř, uvolnit ztuhlost zad a podpořit lepší napřímení trupu. Střídá zakulacení a otevření hrudníku a dobře se hodí po delším sezení. Sedací varianta kočky–krávy se běžně používá pro jemnou mobilizaci páteře a propojení pohybu s dechem.',
      'jakNaTo': '• Sedni si vzpřímeně na židli\n• Chodidla opři celou plochou o zem\n• Obě paže natáhni před sebe\n• S výdechem podsazuj pánev, zakulať záda a bradu přibliž k hrudníku\n• Paže zůstávají natažené vpřed a pomáhají prohloubit zakulacení zad\n• S nádechem se vrať do napřímení, otevři hrudník a paže veď lehce za sebe\n• Pohyb několikrát plynule opakuj v návaznosti na dech',
      'pozor': '• Neprovádět pohyb rychle nebo švihově\n• Nezvedat ramena k uším\n• Nezaklánět hlavu příliš dozadu\n• Nepřehánět rozsah pohybu v bedrech\n• Nezadržovat dech\n• Pohyb provádět pomalu a kontrolovaně'
    },
    {
      'title': 'Rotace trupu na židli',
      'desc': 'Tento cvik pomáhá rozhýbat hrudní páteř, uvolnit horní část zad a zlepšit rotaci trupu. Je vhodný hlavně po delším sezení, kdy bývá střední část zad ztuhlá a pohyb do stran omezený.',
      'jakNaTo': '• Sedni si vzpřímeně na židli\n• Chodidla opři celou plochou o zem\n• Pánev nech stabilní a záda napřímená\n• Jednou rukou se přidrž opěradla židle\n• Druhou ruku polož na stehno nebo ji nech volně podél těla\n• Pomalu otoč trup na jednu stranu\n• Chvíli v pozici setrvej a volně dýchej\n• Poté se vrať zpět do středu a vystřídej strany',
      'pozor': '• Nehrbit se během pohybu\n• Nevytáčet se švihově\n• Nezvedat ramena k uším\n• Nevytáčet pánev spolu s trupem\n• Nepřecházet přes bolest\n• Pohyb provádět pomalu a kontrolovaně'
    },
    {
      'title': 'Boční úklon na židli',
      'desc': 'Tento cvik pomáhá rozhýbat páteř do strany, protáhnout boční část trupu a uvolnit oblast žeber i svaly kolem páteře. Hodí se hlavně po delším sezení, kdy bývá trup ztuhlý a pohyb do stran omezený.',
      'jakNaTo': '• Sedni si vzpřímeně na židli\n• Chodidla opři celou plochou o zem\n• Paže nech volně podél těla\n• Jednu ruku pomalu posouvej po straně židle nebo po noze směrem dolů\n• Současně se ukláněj do stejné strany\n• Druhá strana trupu se přirozeně protahuje\n• Poté se vrať zpět do středu a vystřídej strany',
      'pozor': '• Nepředklánět se místo úklonu\n• Nevytáčet trup do rotace\n• Nezvedat ramena k uším\n• Nepřetahovat rozsah pohybu\n• Neprovádět pohyb švihově\n• Pohyb provádět pomalu a kontrolovaně'
    },
    {
      'title': 'Kočičí hřbet',
      'desc': 'Tento cvik slouží k jemné mobilizaci celé páteře a pomáhá uvolnit napětí v oblasti zad, šíje i beder. Podporuje vnímání postavení páteře a zlepšuje její pohyblivost.',
      'jakNaTo': '• Výchozí poloha je na všech čtyřech\n• Dlaně jsou pod rameny, kolena pod kyčlemi\n• S výdechem pomalu vyhrb záda směrem ke stropu\n• Hlava směřuje dolů a pánev se lehce podsadí\n• S nádechem plynule přejdi do mírného prohnutí\n• Hrudník se otevírá, pohled směřuje lehce vpřed\n• Pohyb prováděj plynule a bez švihu',
      'pozor': '• Nepřecházet do bolestivého rozsahu\n• Neprovádět pohyb příliš rychle\n• Nepřetěžovat krční páteř záklonem hlavy\n• Ramena nevytahovat k uším'
    },
    {
      'title': 'Rotace hrudníku v kleče',
      'desc': 'Tento cvik pomáhá zlepšit pohyblivost hrudní páteře, uvolnit horní část zad a snížit pocit ztuhlosti po delším sezení. Zároveň podporuje lepší kontrolu trupu a plynulejší pohyb páteře.',
      'jakNaTo': '• Zaujmi polohu na všech čtyřech\n• Dlaně jsou pod rameny a kolena pod kyčlemi\n• Páteř drž v neutrálním postavení\n• Jednu paži zvedni do strany a současně otáčej hrudník tímto směrem\n• Oči mohou sledovat pohyb paže\n• Poté paži vrať zpět a vystřídej strany\n• Pohyb prováděj pomalu, plynule a kontrolovaně',
      'pozor': '• Neprohýbat se nadměrně v bedrech\n• Nevytáčet pánev do strany\n• Nezvedat ramena k uším\n• Neprovádět pohyb švihově\n• Nezadržovat dech\n• Nepřecházet přes bolest'
    },
    {
      'title': 'Rotace trupu s pokládáním paže',
      'desc': 'Tento cvik pomáhá zlepšit pohyblivost hrudní páteře, uvolnit horní část zad a snížit pocit ztuhlosti po dlouhém sezení. Paže se provléká pod trup, rotace z hrudní páteře.',
      'jakNaTo': '• Zaujmi polohu na všech čtyřech\n• Dlaně jsou pod rameny a kolena pod kyčlemi\n• S nádechem jednu paži zvedni vzhůru a lehce otevři hrudník\n• S výdechem stejnou paži provleč pod opěrnou paží\n• Pokládej rameno a stranu hlavy k podložce\n• Pánev stabilní, pohyb plynulý\n• Vrať se zpět a opakuj na obě strany',
      'pozor': '• Nepřetáčet se silou\n• Neprohýbat se nadměrně v bedrech\n• Nevytáčet pánev do strany\n• Nezadržovat dech\n• Nepoužívat švihový pohyb\n• Nepřecházet přes ostrou bolest'
    },
    {
      'title': 'Bird dog',
      'desc': 'Cvik podporuje stabilitu trupu, koordinaci a správné zapojení hlubokého stabilizačního systému. Posiluje záda bez zbytečného přetížení páteře.',
      'jakNaTo': '• Zaujmi polohu na všech čtyřech\n• Dlaně pod rameny, kolena pod kyčlemi\n• Zpevni střed těla\n• Natáhni jednu ruku vpřed, opačnou nohu vzad\n• Pánev/trup stabilní\n• Vydrž, vrať se, vystřídej strany',
      'pozor': '• Nevytáčet pánev do strany\n• Neprohýbat se v bedrech\n• Nevysouvat hlavu vpřed\n• Nepoužívat rychlý/švihový pohyb'
    },
    {
      'title': 'Pozice dítěte',
      'desc': 'Cvik pomáhá uvolnit bedra, protáhnout zádové svaly a zklidnit napětí po dlouhém sezení.',
      'jakNaTo': '• Klekni si na podložku\n• Hýždě k patám\n• Trup dopředu\n• Paže natáhni před sebe\n• Čelo k podložce\n• Dýchej do zad/beder\n• Setrvej',
      'pozor': '• Nevytvářet tlak v kolenou\n• Nehrbit ramena k uším\n• Nespěchat do krajní polohy\n• Při bolesti kolen upravit'
    },
    {
      'title': 'Podsazení pánve',
      'desc': 'Tento cvik pomáhá jemně aktivovat střed těla, zlepšit vnímání postavení pánve a uvolnit napětí v bederní oblasti. Vhodný po delším sezení.',
      'jakNaTo': '• Lehni na záda, pokrč nohy\n• Chodidla opři podložku\n• Paže volně podél těla\n• S výdechem podsaz pánev\n• Bedra k podložce\n• Setrvej nebo opakuj',
      'pozor': '• Nezvedat pánev vysoko\n• Nešvihově\n• Nezapojovat ramena/šíji zbytečně\n• Nezadržovat dech\n• Kontrolovaně'
    },
    {
      'title': 'Uvolnění do rotace vleže',
      'desc': 'Tento cvik pomáhá jemně rozhýbat páteř, uvolnit bederní oblast a snížit ztuhlost po delším sezení. Podporuje mobilitu trupu a pánve.',
      'jakNaTo': '• Lehni na záda\n• Pokrč nohy, chodidla na šířku pánve\n• Nohy pomalu na jednu stranu\n• Ramena uvolněná\n• Vrať a opakuj na druhou',
      'pozor': '• Nepouštět prudce\n• Nešvihově\n• Ramena na podložce\n• Nepřecházet bolest\n• Nezadržovat dech'
    },
    {
      'title': 'Přitažení kolena k hrudníku',
      'desc': 'Tento cvik pomáhá uvolnit bederní páteř, snížit napětí v dolní části zad a protáhnout hýždě/kyčle. Vhodný po delším sezení.',
      'jakNaTo': '• Lehni na záda\n• Jedno koleno přitáhni rukama k hrudníku\n• Ramena/hlava na podložce\n• Bedra pohodlně\n• Setrvej, dýchej, vystřídej',
      'pozor': '• Nepřitahovat silou\n• Nezvedat hlavu/ramena\n• Nezadržovat dech\n• Nepřecházet bolest\n• Kontrolovaně'
    },
    {
      'title': 'Boční úklon',
      'desc': 'Tento cvik pomáhá protáhnout boční část trupu, oblast žeber a svaly kolem páteře. Vhodný po delším sezení.',
      'jakNaTo': '• Sedni s překříženýma nohama\n• Páteř vzpřímená\n• Ruku nad hlavu, uklon do strany\n• Druhá ruka vedle těla\n• Vrať, vystřídej',
      'pozor': '• Nepředklánět se\n• Nevytáčet do rotace\n• Nezvedat ramena\n• Nepřetahovat\n• Nešvihově\n• Podložit sed pokud potřeba'
    },
    {
      'title': 'Twist v sedu',
      'desc': 'Tento cvik pomáhá zlepšit pohyblivost páteře, uvolnit zad a podpořit rotaci trupu. Přispívá k lepšímu napřímení při sedu.',
      'jakNaTo': '• Sedni s nataženýma nohama\n• Pravou nohu překřiž přes levou\n• Levou ruku k pravému koleni\n• Pravou ruku za tělo\n• Otoč trup, dýchej, vystřídej',
      'pozor': '• Nerychle/švihově\n• Nehrbit se\n• Nepřecházet bolest\n• Nezadržovat dech\n• Plynule'
    }
  ];

  // Other
  static const String contentComingSoon = 'Obsah bude doplněn.';
  static const String shopCta = 'Přejít do e-shopu';
  static const String backToHome = 'Zpět na úvod';
}

