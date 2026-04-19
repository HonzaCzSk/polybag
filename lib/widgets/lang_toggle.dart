import 'package:flutter/material.dart';
import '../lang/locale_notifier.dart';

/// Tlačítko přepínající CZ ↔ EN — přidej jako actions položku v AppBaru
class LangToggle extends StatelessWidget {
  const LangToggle({super.key});

  @override
  Widget build(BuildContext context) {
    final notifier = LocaleScope.of(context);
    return ValueListenableBuilder<bool>(
      valueListenable: notifier,
      builder: (context, isCz, _) {
        return TextButton(
          onPressed: notifier.toggle,
          style: TextButton.styleFrom(
            foregroundColor: Theme.of(context).colorScheme.onSurface,
            padding: const EdgeInsets.symmetric(horizontal: 12),
          ),
          child: Text(
            isCz ? 'EN' : 'CZ',
            style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
          ),
        );
      },
    );
  }
}
