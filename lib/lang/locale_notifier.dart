import 'package:flutter/widgets.dart';

/// Drží aktuální jazyk: true = čeština (výchozí), false = angličtina
class LocaleNotifier extends ValueNotifier<bool> {
  LocaleNotifier() : super(true);

  void toggle() => value = !value;
  bool get isCz => value;
}

/// InheritedWidget — šíří LocaleNotifier celým stromem
class LocaleScope extends InheritedNotifier<LocaleNotifier> {
  const LocaleScope({
    super.key,
    required LocaleNotifier super.notifier,
    required super.child,
  });

  static LocaleNotifier of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<LocaleScope>()!.notifier!;
}
