import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'app.dart';
import 'theme.dart';
import 'lang/locale_notifier.dart';

final _localeNotifier = LocaleNotifier();

void main() {
  runApp(const PolyBagApp());
}

class PolyBagApp extends StatelessWidget {
  const PolyBagApp({super.key});

  @override
  Widget build(BuildContext context) {
    return LocaleScope(
      notifier: _localeNotifier,
      child: ListenableBuilder(
        listenable: _localeNotifier,
        builder: (context, _) => MaterialApp.router(
          title: 'PolyBag',
          theme: buildAppTheme(),
          routerConfig: router,
          debugShowCheckedModeBanner: false,
          locale: _localeNotifier.isCz ? const Locale('cs') : const Locale('en'),
          supportedLocales: const [Locale('cs'), Locale('en')],
          localizationsDelegates: GlobalMaterialLocalizations.delegates,
        ),
      ),
    );
  }
}
