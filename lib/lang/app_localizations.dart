import 'package:flutter/widgets.dart';
import 'locale_notifier.dart';

class AppLocalizations {
  final bool _isCz;
  AppLocalizations._(this._isCz);

  static AppLocalizations of(BuildContext context) {
    final notifier = LocaleScope.of(context);
    return AppLocalizations._(notifier.isCz);
  }

  // ── App ──────────────────────────────────────────────────────────────────
  String get appTitle => 'PolyBag';
  String get healthySitting =>
      _isCz ? 'Zdravé sezení' : 'Healthy Sitting';
  String get whatInterestsYou =>
      _isCz ? 'Co tě zajímá?' : 'What interests you?';

  // ── Navigation ───────────────────────────────────────────────────────────
  String get navPosture   => _isCz ? 'Postoj a sezení'  : 'Posture & Sitting';
  String get navExercises => _isCz ? 'Cvičení'          : 'Exercises';
  String get navProducts  => _isCz ? 'Produkty'         : 'Products';
  String get navAbout     => _isCz ? 'O nás'            : 'About Us';
  String get backToHome   => _isCz ? 'Zpět na úvod'     : 'Back to home';

  // ── Home screen cards ────────────────────────────────────────────────────
  String get cardPostureTitle    => _isCz ? 'Správné\ndržení těla'    : 'Correct\nPosture';
  String get cardPostureSubtitle => _isCz ? 'Postoj a sezení'         : 'Posture & Sitting';
  String get cardExercisesTitle    => _isCz ? 'Kompenzační\ncvičení'  : 'Compensatory\nExercises';
  String get cardExercisesSubtitle => _isCz ? 'Cviky pro záda'        : 'Exercises for back';
  String get cardProductsTitle    => _isCz ? 'Nabídka\nproduktů'      : 'Product\nOffer';
  String get cardProductsSubtitle => _isCz ? 'Podsedáky a pytle'      : 'Cushions & bags';
  String get cardAboutTitle    => _isCz ? 'O nás'          : 'About Us';
  String get cardAboutSubtitle => _isCz ? 'Příběh PolyBag' : 'PolyBag Story';

  // ── Sitting screen ───────────────────────────────────────────────────────
  String get correctSitting => _isCz ? 'Správné držení těla' : 'Correct Posture';
  String get sittingHeading => _isCz
      ? 'Správné držení těla při sezení a postojích'
      : 'Correct Posture While Sitting and Standing';
  String get sittingSubtext => _isCz
      ? 'Zde jsou klíčové tipy pro zdravé sezení a stání během celého dne. Aplikuj je postupně!'
      : 'Here are key tips for healthy sitting and standing throughout the day. Apply them gradually!';
  String get howToDoIt  => _isCz ? 'Jak na to?'          : 'How to do it?';
  String get watchOutFor => _isCz ? 'Na co si dát pozor?' : 'What to watch out for?';
  String get sittingTipTitle => _isCz ? 'Pro lepší výsledky' : 'For better results';
  String get sittingTipText  => _isCz
      ? 'Kombinuj s kompenzačními cvičeními a podsedákem PolyBag!'
      : 'Combine with compensatory exercises and the PolyBag cushion!';

  // ── Exercises screen ─────────────────────────────────────────────────────
  String get exercises        => _isCz ? 'Kompenzační cvičení'          : 'Compensatory Exercises';
  String get exercisesHeading => _isCz ? 'Cvičení pro zdravá záda'      : 'Exercises for a Healthy Back';
  String get exercisesSubtext => _isCz
      ? 'Vyzkoušej tyto jednoduché cviky po každé hodině sezení. Každý cvik 2–3x denně!'
      : 'Try these simple exercises after every hour of sitting. Each exercise 2–3 times a day!';
  String get exerciseTipTitle => _isCz ? 'Tip pro úspěch' : 'Tip for success';
  String get exerciseTipText  => _isCz
      ? 'Dýchej zhluboka, cviky dělej pomalu a pravidelně. Za týden uvidíš rozdíl!'
      : 'Breathe deeply, do exercises slowly and regularly. You\'ll see a difference in a week!';

  // ── Products screen ──────────────────────────────────────────────────────
  String get products        => _isCz ? 'Nabídka produktů' : 'Product Offer';
  String get productsHeading => _isCz ? 'Naše produkty'    : 'Our Products';
  String get productsDesc    => _isCz
      ? 'Podsedáky a sedací pytle z recyklovaných bigbagů, vyráběné v chráněné dílně Daneta.'
      : 'Seat cushions and beanbags made from recycled big bags, produced at the Daneta sheltered workshop.';
  String get goToShop => _isCz ? 'Přejít do e-shopu' : 'Go to e-shop';

  // ── About screen ─────────────────────────────────────────────────────────
  String get about       => _isCz ? 'O nás'    : 'About Us';
  String get contact     => _isCz ? 'Kontakt'  : 'Contact';
  String get followUs    => _isCz ? 'Sledujte nás' : 'Follow us';
  String get aboutDesc   => _isCz
      ? 'Vyrábíme podsedáky a sedací pytle z recyklovaných polypropylenových bigbagů. '
        'Každý výrobek vzniká v lokální chráněné dílně Daneta, která zaměstnává osoby se zdravotním postižením.'
      : 'We produce seat cushions and beanbags from recycled polypropylene big bags. '
        'Each product is made at the local Daneta sheltered workshop, which employs people with disabilities.';
  // ignore: non_constant_identifier_names
  String get danetaDesc => _isCz
      ? 'Koupí produktu podporujete chráněnou dílnu Daneta — organizaci pomáhající osobám s hendikepem.'
      : 'By purchasing our products, you support Daneta — an organisation helping people with disabilities.';

  // ── Data: Sitting tips ───────────────────────────────────────────────────
  List<Map<String, String>> get sittingTips =>
      _isCz ? _sittingTipsCz : _sittingTipsEn;

  static const List<Map<String, String>> _sittingTipsCz = [
    {
      'title': 'Správný postoj',
      'video': 'spravny_postoj',
      'desc':
          'Správný postoj představuje optimální nastavení jednotlivých částí těla vůči sobě tak, '
          'aby bylo zatížení rovnoměrně rozloženo a pohybový aparát pracoval co nejefektivněji. '
          'Při správném stoji dochází k udržení fyziologického zakřivení páteře, lepší stabilizaci '
          'trupu a menšímu přetěžování svalů, kloubů i vazivových struktur. Správné držení těla '
          'je důležité nejen pro prevenci bolestí zad a šíje, ale také pro kvalitní dýchání, '
          'stabilitu a celkovou koordinaci pohybu.',
      'jakNaTo':
          '• Hlava je v ose těla a v prodloužení páteře\n'
          '• Krční páteř je v neutrálním postavení\n'
          '• Ramena jsou uvolněná, lehce stažená dolů a dozadu\n'
          '• Hrudník je otevřený, ale ne přehnaně vysunutý vpřed\n'
          '• Páteř zachovává své přirozené zakřivení\n'
          '• Lopatky jsou uložené přirozeně, bez nadměrného předsunutí\n'
          '• Břicho a hluboký stabilizační systém jsou lehce aktivní\n'
          '• Pánev je v neutrálním postavení\n'
          '• Hmotnost těla je rozložena rovnoměrně na obě dolní končetiny\n'
          '• Kolena jsou uvolněná, bez přepnutí do záklonu\n'
          '• Chodidla směřují vpřed nebo mírně zevně, přibližně na šířku pánve či ramen\n'
          '• Opora je rozložena rovnoměrně na celé plosky nohou',
      'pozor':
          '• Předsunuté držení hlavy\n'
          '• Kulatá ramena a zvětšené hrbení hrudní páteře\n'
          '• Nadměrné prohnutí v bederní oblasti\n'
          '• Podsazení nebo příliš vysazení pánve\n'
          '• Přenášení váhy více na jednu dolní končetinu\n'
          '• Přepínání kolen do krajní polohy\n'
          '• Vbočené nebo vytočené postavení chodidel\n'
          '• Dlouhodobé setrvávání v jedné statické poloze\n'
          '• Zadržování dechu a zbytečné napětí v oblasti šíje a ramen',
    },
    {
      'title': 'Správné sezení',
      'video': 'spravne_sezeni',
      'desc':
          'Správný sed je důležitý pro zdravé držení těla a správnou funkci pohybového aparátu. '
          'Při vhodném nastavení těla se zátěž rozkládá rovnoměrně, což pomáhá snižovat přetížení '
          'páteře, svalů i kloubů. Samotné sezení samo o sobě není ten problém — potíže často '
          'vznikají až při dlouhodobém setrvávání v sedu bez změny polohy. Správné sezení proto '
          'spolu s pravidelným pohybem a krátkými přestávkami přispívá k prevenci bolestí zad, '
          'šíje a ramen.',
      'jakNaTo':
          '• Hlava je v prodloužení páteře\n'
          '• Krční páteř je v neutrálním postavení\n'
          '• Ramena jsou uvolněná a lehce stažená dolů\n'
          '• Záda jsou napřímená, s přirozeným zakřivením páteře\n'
          '• Pánev je v neutrálním postavení\n'
          '• Střed těla je lehce aktivní\n'
          '• Hýždě jsou opřené rovnoměrně o sedací plochu\n'
          '• Chodidla jsou celou plochou na podlaze\n'
          '• Kolena jsou přibližně v úhlu 90 stupňů\n'
          '• Kyčle jsou ve stejné nebo mírně vyšší úrovni než kolena\n'
          '• Předloktí mohou být volně opřená, bez zvedání ramen',
      'pozor':
          '• Předsunuté držení hlavy\n'
          '• Hrbení zad a kulatá ramena\n'
          '• Nadměrné prohnutí v bedrech\n'
          '• Podsazení pánve\n'
          '• Sezení na okraji židle bez opory\n'
          '• Překřížené nohy po dlouhou dobu\n'
          '• Neopřená chodidla\n'
          '• Dlouhé setrvávání v jedné poloze\n'
          '• Nadměrné napětí v oblasti šíje, ramen a beder',
    },
  ];

  static const List<Map<String, String>> _sittingTipsEn = [
    {
      'title': 'Correct Standing Posture',
      'video': 'spravny_postoj',
      'desc':
          'Correct posture means optimally aligning the parts of the body so that load is evenly '
          'distributed and the musculoskeletal system works as efficiently as possible. Proper '
          'standing maintains the natural curvature of the spine, improves core stability, and '
          'reduces strain on muscles, joints, and connective tissue. Good posture is important not '
          'only for preventing back and neck pain, but also for breathing quality, stability, and '
          'overall movement coordination.',
      'jakNaTo':
          '• Head is in line with the body, extending from the spine\n'
          '• Cervical spine is in a neutral position\n'
          '• Shoulders are relaxed, gently pulled down and back\n'
          '• Chest is open, but not excessively pushed forward\n'
          '• Spine maintains its natural curves\n'
          '• Shoulder blades sit naturally, without excessive forward shift\n'
          '• Abdomen and deep stabilising system are lightly engaged\n'
          '• Pelvis is in a neutral position\n'
          '• Body weight is evenly distributed across both legs\n'
          '• Knees are relaxed, not locked back\n'
          '• Feet point forward or slightly outward, roughly hip- or shoulder-width apart\n'
          '• Weight is spread evenly across the entire soles of the feet',
      'pozor':
          '• Forward head posture\n'
          '• Rounded shoulders and increased thoracic kyphosis\n'
          '• Excessive lumbar extension\n'
          '• Tucked or overly tilted pelvis\n'
          '• Shifting weight onto one leg\n'
          '• Locking knees into hyperextension\n'
          '• Feet turned inward or excessively outward\n'
          '• Prolonged static posture without movement\n'
          '• Holding breath and unnecessary tension in the neck and shoulders',
    },
    {
      'title': 'Correct Sitting Posture',
      'video': 'spravne_sezeni',
      'desc':
          'Correct sitting is important for healthy posture and proper musculoskeletal function. '
          'When the body is well positioned, load is distributed evenly, reducing strain on the '
          'spine, muscles, and joints. Sitting itself is not the problem — issues typically arise '
          'from remaining in the same position for too long without moving. Correct sitting, '
          'combined with regular movement and short breaks, helps prevent back, neck, and '
          'shoulder pain.',
      'jakNaTo':
          '• Head extends from the spine\n'
          '• Cervical spine is in a neutral position\n'
          '• Shoulders are relaxed and gently pulled down\n'
          '• Back is straight with a natural spinal curve\n'
          '• Pelvis is in a neutral position\n'
          '• Core is lightly engaged\n'
          '• Hips are evenly supported on the seat surface\n'
          '• Feet are flat on the floor\n'
          '• Knees are at approximately a 90-degree angle\n'
          '• Hips are at the same level as or slightly higher than the knees\n'
          '• Forearms may rest freely without raising the shoulders',
      'pozor':
          '• Forward head posture\n'
          '• Rounded back and shoulders\n'
          '• Excessive lumbar extension\n'
          '• Tucked pelvis\n'
          '• Sitting on the edge of the chair without support\n'
          '• Crossed legs for long periods\n'
          '• Unsupported feet\n'
          '• Prolonged sitting in one position\n'
          '• Excessive tension in the neck, shoulders, and lower back',
    },
  ];

  // ── Data: Exercises ──────────────────────────────────────────────────────
  List<Map<String, String>> get exercisesList =>
      _isCz ? _exercisesListCz : _exercisesListEn;

  static const List<Map<String, String>> _exercisesListCz = [
    {
      'title': 'Kočka–kráva na židli',
      'video': 'kocka_krava_na_zidli',
      'desc': 'Tento cvik pomáhá jemně rozhýbat páteř, uvolnit ztuhlost zad a podpořit lepší napřímení trupu. Střídá zakulacení a otevření hrudníku a dobře se hodí po delším sezení.',
      'jakNaTo': '• Sedni si vzpřímeně na židli\n• Chodidla opři celou plochou o zem\n• Obě paže natáhni před sebe\n• S výdechem podsazuj pánev, zakulatí záda a bradu přibliž k hrudníku\n• Paže zůstávají natažené vpřed\n• S nádechem se vrať do napřímení, otevři hrudník a paže veď lehce za sebe\n• Pohyb několikrát plynule opakuj v návaznosti na dech',
      'pozor': '• Neprovádět pohyb rychle nebo švihově\n• Nezvedat ramena k uším\n• Nezaklánět hlavu příliš dozadu\n• Nepřehánět rozsah pohybu v bedrech\n• Nezadržovat dech\n• Pohyb provádět pomalu a kontrolovaně',
    },
    {
      'title': 'Rotace trupu na židli',
      'video': 'rotace_trupu_na_zidli',
      'desc': 'Tento cvik pomáhá rozhýbat hrudní páteř, uvolnit horní část zad a zlepšit rotaci trupu. Je vhodný hlavně po delším sezení, kdy bývá střední část zad ztuhlá a pohyb do stran omezený.',
      'jakNaTo': '• Sedni si vzpřímeně na židli\n• Chodidla opři celou plochou o zem\n• Pánev nech stabilní a záda napřímená\n• Jednou rukou se přidrž opěradla židle\n• Druhou ruku polož na stehno nebo ji nech volně podél těla\n• Pomalu otoč trup na jednu stranu\n• Chvíli v pozici setrvej a volně dýchej\n• Poté se vrať zpět do středu a vystřídej strany',
      'pozor': '• Nehrbit se během pohybu\n• Nevytáčet se švihově\n• Nezvedat ramena k uším\n• Nevytáčet pánev spolu s trupem\n• Nepřecházet přes bolest\n• Pohyb provádět pomalu a kontrolovaně',
    },
    {
      'title': 'Boční úklon na židli',
      'video': 'bocni_uklon_na_zidli',
      'desc': 'Tento cvik pomáhá rozhýbat páteř do strany, protáhnout boční část trupu a uvolnit oblast žeber i svaly kolem páteře. Hodí se hlavně po delším sezení, kdy bývá trup ztuhlý a pohyb do stran omezený.',
      'jakNaTo': '• Sedni si vzpřímeně na židli\n• Chodidla opři celou plochou o zem\n• Paže nech volně podél těla\n• Jednu ruku pomalu posouvej po straně židle směrem dolů\n• Současně se ukláněj do stejné strany\n• Druhá strana trupu se přirozeně protahuje\n• Poté se vrať zpět do středu a vystřídej strany',
      'pozor': '• Nepředklánět se místo úklonu\n• Nevytáčet trup do rotace\n• Nezvedat ramena k uším\n• Nepřetahovat rozsah pohybu\n• Neprovádět pohyb švihově\n• Pohyb provádět pomalu a kontrolovaně',
    },
    {
      'title': 'Kočičí hřbet',
      'video': 'kocici_hrbet',
      'desc': 'Tento cvik slouží k jemné mobilizaci celé páteře a pomáhá uvolnit napětí v oblasti zad, šíje i beder. Podporuje vnímání postavení páteře a zlepšuje její pohyblivost.',
      'jakNaTo': '• Výchozí poloha je na všech čtyřech\n• Dlaně jsou pod rameny, kolena pod kyčlemi\n• S výdechem pomalu vyhřb záda směrem ke stropu\n• Hlava směřuje dolů a pánev se lehce podsadí\n• S nádechem plynule přejdi do mírného prohnutí\n• Hrudník se otevírá, pohled směřuje lehce vpřed\n• Pohyb prováděj plynule a bez švihu',
      'pozor': '• Nepřecházet do bolestivého rozsahu\n• Neprovádět pohyb příliš rychle\n• Nepřetěžovat krční páteř záklonem hlavy\n• Ramena nevytahovat k uším',
    },
    {
      'title': 'Rotace hrudníku v kleči',
      'video': 'rotace_hrudniku_v_klece',
      'desc': 'Tento cvik pomáhá zlepšit pohyblivost hrudní páteře, uvolnit horní část zad a snížit pocit ztuhlosti po delším sezení. Zároveň podporuje lepší kontrolu trupu a plynulejší pohyb páteře.',
      'jakNaTo': '• Zaujmi polohu na všech čtyřech\n• Dlaně jsou pod rameny a kolena pod kyčlemi\n• Páteř drž v neutrálním postavení\n• Jednu paži zvedni do strany a současně otáčej hrudník tímto směrem\n• Oči mohou sledovat pohyb paže\n• Poté paži vrať zpět a vystřídej strany\n• Pohyb prováděj pomalu, plynule a kontrolovaně',
      'pozor': '• Neprohýbat se nadměrně v bedrech\n• Nevytáčet pánev do strany\n• Nezvedat ramena k uším\n• Neprovádět pohyb švihově\n• Nezadržovat dech\n• Nepřecházet přes bolest',
    },
    {
      'title': 'Rotace trupu s pokládáním paže',
      'video': 'rotace_hrudniku_s_pokladanim_paze',
      'desc': 'Tento cvik pomáhá zlepšit pohyblivost hrudní páteře, uvolnit horní část zad a snížit pocit ztuhlosti po dlouhém sezení. Paže se provléká pod trup, rotace z hrudní páteře.',
      'jakNaTo': '• Zaujmi polohu na všech čtyřech\n• Dlaně jsou pod rameny a kolena pod kyčlemi\n• S nádechem jednu paži zvedni vzhůru a lehce otevři hrudník\n• S výdechem stejnou paži provleč pod opěrnou paží\n• Pokládej rameno a stranu hlavy k podložce\n• Pánev stabilní, pohyb plynulý\n• Vrať se zpět a opakuj na obě strany',
      'pozor': '• Nepřetáčet se silou\n• Neprohýbat se nadměrně v bedrech\n• Nevytáčet pánev do strany\n• Nezadržovat dech\n• Nepoužívat švihový pohyb\n• Nepřecházet přes ostrou bolest',
    },
    {
      'title': 'Bird dog',
      'video': 'bird_dog',
      'desc': 'Cvik podporuje stabilitu trupu, koordinaci a správné zapojení hlubokého stabilizačního systému. Posiluje záda bez zbytečného přetížení páteře.',
      'jakNaTo': '• Zaujmi polohu na všech čtyřech\n• Dlaně pod rameny, kolena pod kyčlemi\n• Zpevni střed těla\n• Natáhni jednu ruku vpřed, opačnou nohu vzad\n• Pánev a trup stabilní\n• Vydrž, vrať se, vystřídej strany',
      'pozor': '• Nevytáčet pánev do strany\n• Neprohýbat se v bedrech\n• Nevysouvat hlavu vpřed\n• Nepoužívat rychlý/švihový pohyb',
    },
    {
      'title': 'Pozice dítěte',
      'video': 'pozice_ditete',
      'desc': 'Cvik pomáhá uvolnit bedra, protáhnout zádové svaly a zklidnit napětí po dlouhém sezení.',
      'jakNaTo': '• Klekni si na podložku\n• Hýždě k patám\n• Trup dopředu\n• Paže natáhni před sebe\n• Čelo k podložce\n• Dýchej do zad a beder\n• Setrvej',
      'pozor': '• Nevytvářet tlak v kolenou\n• Nehrbit ramena k uším\n• Nespěchat do krajní polohy\n• Při bolesti kolen upravit',
    },
    {
      'title': 'Podsazení pánve',
      'video': 'podsazeni_panve',
      'desc': 'Tento cvik pomáhá jemně aktivovat střed těla, zlepšit vnímání postavení pánve a uvolnit napětí v bederní oblasti. Vhodný po delším sezení.',
      'jakNaTo': '• Lehni na záda, pokrč nohy\n• Chodidla opři podložku\n• Paže volně podél těla\n• S výdechem podsaď pánev\n• Bedra k podložce\n• Setrvej nebo opakuj',
      'pozor': '• Nezvedat pánev vysoko\n• Nešvihově\n• Nezapojovat ramena a šíji zbytečně\n• Nezadržovat dech\n• Kontrolovaně',
    },
    {
      'title': 'Uvolnění do rotace vleže',
      'video': 'uvolneni_do_rotace',
      'desc': 'Tento cvik pomáhá jemně rozhýbat páteř, uvolnit bederní oblast a snížit ztuhlost po delším sezení. Podporuje mobilitu trupu a pánve.',
      'jakNaTo': '• Lehni na záda\n• Pokrč nohy, chodidla na šířku pánve\n• Nohy pomalu na jednu stranu\n• Ramena uvolněná\n• Vrať a opakuj na druhou',
      'pozor': '• Nepouštět prudce\n• Nešvihově\n• Ramena na podložce\n• Nepřecházet bolest\n• Nezadržovat dech',
    },
    {
      'title': 'Přitažení kolena k hrudníku',
      'video': 'pritahovani_kolena',
      'desc': 'Tento cvik pomáhá uvolnit bederní páteř, snížit napětí v dolní části zad a protáhnout hýždě a kyčle. Vhodný po delším sezení.',
      'jakNaTo': '• Lehni na záda\n• Jedno koleno přitáhni rukama k hrudníku\n• Ramena a hlava na podložce\n• Bedra pohodlně\n• Setrvej, dýchej, vystřídej',
      'pozor': '• Nepřitahovat silou\n• Nezvedat hlavu a ramena\n• Nezadržovat dech\n• Nepřecházet bolest\n• Kontrolovaně',
    },
    {
      'title': 'Boční úklon',
      'video': 'bocni_uklon',
      'desc': 'Tento cvik pomáhá protáhnout boční část trupu, oblast žeber a svaly kolem páteře. Vhodný po delším sezení.',
      'jakNaTo': '• Sedni s překříženýma nohama\n• Páteř vzpřímená\n• Ruku nad hlavu, uklon do strany\n• Druhá ruka vedle těla\n• Vrať, vystřídej',
      'pozor': '• Nepředklánět se\n• Nevytáčet do rotace\n• Nezvedat ramena\n• Nepřetahovat\n• Nešvihově\n• Podložit sed pokud potřeba',
    },
    {
      'title': 'Twist v sedu',
      'video': 'twist',
      'desc': 'Tento cvik pomáhá zlepšit pohyblivost páteře, uvolnit záda a podpořit rotaci trupu. Přispívá k lepšímu napřímení při sedu.',
      'jakNaTo': '• Sedni s nataženýma nohama\n• Pravou nohu překřiž přes levou\n• Levou ruku k pravému koleni\n• Pravou ruku za tělo\n• Otoč trup, dýchej, vystřídej',
      'pozor': '• Nerychu/švihově\n• Nehrbit se\n• Nepřecházet bolest\n• Nezadržovat dech\n• Plynule',
    },
  ];

  static const List<Map<String, String>> _exercisesListEn = [
    {
      'title': 'Cat–Cow on Chair',
      'video': 'kocka_krava_na_zidli',
      'desc': 'This exercise gently mobilises the spine, releases back stiffness, and encourages better upright posture. It alternates between rounding and opening the chest, making it ideal after prolonged sitting.',
      'jakNaTo': '• Sit upright on a chair\n• Press your feet flat on the floor\n• Extend both arms in front of you\n• On the exhale, tuck the pelvis, round the back, and bring the chin toward the chest\n• Arms stay extended forward\n• On the inhale, return to upright, open the chest, and draw the arms gently back\n• Repeat several times fluidly in sync with your breath',
      'pozor': '• Do not rush or swing through the movement\n• Do not shrug the shoulders toward the ears\n• Do not tilt the head too far back\n• Do not exaggerate the range in the lower back\n• Do not hold your breath\n• Move slowly and with control',
    },
    {
      'title': 'Trunk Rotation on Chair',
      'video': 'rotace_trupu_na_zidli',
      'desc': 'This exercise helps mobilise the thoracic spine, release the upper back, and improve trunk rotation. It is especially suitable after prolonged sitting, when the mid-back tends to stiffen and lateral movement becomes restricted.',
      'jakNaTo': '• Sit upright on a chair\n• Press your feet flat on the floor\n• Keep the pelvis stable and the back straight\n• Hold the back of the chair with one hand\n• Place the other hand on your thigh or let it rest by your side\n• Slowly rotate the trunk to one side\n• Hold the position briefly and breathe freely\n• Return to center and repeat on the other side',
      'pozor': '• Do not slump during the movement\n• Do not swing into the rotation\n• Do not shrug the shoulders toward the ears\n• Do not let the pelvis rotate with the trunk\n• Do not push through pain\n• Move slowly and with control',
    },
    {
      'title': 'Side Bend on Chair',
      'video': 'bocni_uklon_na_zidli',
      'desc': 'This exercise helps mobilise the spine laterally, stretch the sides of the trunk, and release the area around the ribs and spinal muscles. It is especially suitable after prolonged sitting, when the trunk tends to stiffen and side movement becomes restricted.',
      'jakNaTo': '• Sit upright on a chair\n• Press your feet flat on the floor\n• Let your arms rest by your sides\n• Slowly slide one hand down the side of the chair or leg\n• Simultaneously lean to the same side\n• The opposite side of the trunk stretches naturally\n• Return to center and repeat on the other side',
      'pozor': '• Do not lean forward instead of sideways\n• Do not rotate the trunk\n• Do not shrug the shoulders toward the ears\n• Do not overstretch the range of motion\n• Do not swing through the movement\n• Move slowly and with control',
    },
    {
      'title': 'Cat Stretch',
      'video': 'kocici_hrbet',
      'desc': 'This exercise gently mobilises the entire spine and helps release tension in the back, neck, and lower back. It promotes awareness of spinal alignment and improves mobility.',
      'jakNaTo': '• Start on all fours\n• Hands under shoulders, knees under hips\n• On the exhale, slowly arch the back toward the ceiling\n• Head drops down and the pelvis gently tucks\n• On the inhale, smoothly move into a gentle extension\n• Chest opens, gaze drifts slightly forward\n• Move fluidly and without swinging',
      'pozor': '• Do not move into a painful range\n• Do not move too quickly\n• Do not strain the cervical spine by tilting the head back\n• Do not shrug the shoulders toward the ears',
    },
    {
      'title': 'Thoracic Rotation in Kneeling',
      'video': 'rotace_hrudniku_v_klece',
      'desc': 'This exercise helps improve thoracic spine mobility, release the upper back, and reduce stiffness after prolonged sitting. It also supports better trunk control and smoother spinal movement.',
      'jakNaTo': '• Start on all fours\n• Hands under shoulders, knees under hips\n• Keep the spine in a neutral position\n• Lift one arm out to the side while rotating the thorax in that direction\n• Eyes can follow the movement of the arm\n• Return the arm and switch sides\n• Move slowly, smoothly, and with control',
      'pozor': '• Do not overarch the lower back\n• Do not let the pelvis shift sideways\n• Do not shrug the shoulders toward the ears\n• Do not swing through the movement\n• Do not hold your breath\n• Do not push through pain',
    },
    {
      'title': 'Trunk Rotation with Arm Thread',
      'video': 'rotace_hrudniku_s_pokladanim_paze',
      'desc': 'This exercise helps improve thoracic spine mobility, release the upper back, and reduce stiffness after prolonged sitting. The arm threads under the trunk, driving rotation from the thoracic spine.',
      'jakNaTo': '• Start on all fours\n• Hands under shoulders, knees under hips\n• On the inhale, lift one arm upward and gently open the chest\n• On the exhale, thread the same arm under the supporting arm\n• Lower the shoulder and the side of the head toward the mat\n• Pelvis stays stable, movement stays smooth\n• Return and repeat on both sides',
      'pozor': '• Do not force the rotation\n• Do not overarch the lower back\n• Do not let the pelvis shift sideways\n• Do not hold your breath\n• Do not use a swinging movement\n• Do not push through sharp pain',
    },
    {
      'title': 'Bird Dog',
      'video': 'bird_dog',
      'desc': 'This exercise promotes trunk stability, coordination, and proper engagement of the deep stabilising system. It strengthens the back without unnecessary spinal loading.',
      'jakNaTo': '• Start on all fours\n• Hands under shoulders, knees under hips\n• Engage your core\n• Extend one arm forward and the opposite leg back\n• Keep pelvis and trunk stable\n• Hold, return, switch sides',
      'pozor': '• Do not let the pelvis shift sideways\n• Do not overarch the lower back\n• Do not push the head forward\n• Do not use a fast or swinging movement',
    },
    {
      'title': "Child's Pose",
      'video': 'pozice_ditete',
      'desc': 'This exercise helps release the lower back, stretch the back muscles, and calm tension after prolonged sitting.',
      'jakNaTo': '• Kneel on a mat\n• Hips toward heels\n• Trunk forward\n• Extend arms in front\n• Forehead toward the mat\n• Breathe into the back and lower back\n• Hold',
      'pozor': '• Do not create pressure in the knees\n• Do not shrug the shoulders\n• Do not rush into the end position\n• Adjust if there is knee pain',
    },
    {
      'title': 'Pelvic Tilt',
      'video': 'podsazeni_panve',
      'desc': 'This exercise gently activates the core, improves awareness of pelvic position, and releases tension in the lumbar region. Suitable after prolonged sitting.',
      'jakNaTo': '• Lie on your back, knees bent\n• Feet pressed into the mat\n• Arms resting by your sides\n• On the exhale, tilt the pelvis\n• Lower back presses toward the mat\n• Hold or repeat',
      'pozor': '• Do not lift the pelvis high\n• Do not swing\n• Do not unnecessarily engage the shoulders or neck\n• Do not hold your breath\n• Move with control',
    },
    {
      'title': 'Lying Rotation Release',
      'video': 'uvolneni_do_rotace',
      'desc': 'This exercise gently mobilises the spine, releases the lumbar region, and reduces stiffness after prolonged sitting. It supports trunk and pelvic mobility.',
      'jakNaTo': '• Lie on your back\n• Bend the knees, feet hip-width apart\n• Slowly lower the legs to one side\n• Shoulders stay relaxed\n• Return and repeat on the other side',
      'pozor': '• Do not drop the legs suddenly\n• Do not swing\n• Keep shoulders on the mat\n• Do not push through pain\n• Do not hold your breath',
    },
    {
      'title': 'Knee-to-Chest Stretch',
      'video': 'pritahovani_kolena',
      'desc': 'This exercise helps release the lumbar spine, reduce tension in the lower back, and stretch the glutes and hips. Suitable after prolonged sitting.',
      'jakNaTo': '• Lie on your back\n• Pull one knee toward the chest with both hands\n• Shoulders and head stay on the mat\n• Lower back comfortable\n• Hold, breathe, switch sides',
      'pozor': '• Do not pull forcefully\n• Do not lift the head or shoulders\n• Do not hold your breath\n• Do not push through pain\n• Move with control',
    },
    {
      'title': 'Side Bend',
      'video': 'bocni_uklon',
      'desc': 'This exercise helps stretch the sides of the trunk, the rib area, and the muscles around the spine. Suitable after prolonged sitting.',
      'jakNaTo': '• Sit cross-legged\n• Spine upright\n• Raise one arm overhead and lean to the side\n• Other arm rests beside the body\n• Return and switch sides',
      'pozor': '• Do not lean forward\n• Do not rotate into a twist\n• Do not raise the shoulders\n• Do not overstretch\n• Do not swing\n• Use a cushion under the hips if needed',
    },
    {
      'title': 'Seated Twist',
      'video': 'twist',
      'desc': 'This exercise helps improve spinal mobility, release the back, and support trunk rotation. It contributes to better upright posture while seated.',
      'jakNaTo': '• Sit with legs extended\n• Cross the right leg over the left\n• Place the left hand on the right knee\n• Right hand behind the body\n• Rotate the trunk, breathe, switch sides',
      'pozor': '• Do not rush or swing\n• Do not slump\n• Do not push through pain\n• Do not hold your breath\n• Move smoothly',
    },
  ];
}
