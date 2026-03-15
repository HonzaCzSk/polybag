import 'package:flutter/material.dart';

class SittingScreen extends StatelessWidget {
  const SittingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(title: const Text('Jak správně sedět')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text(
            'Správná poloha při sezení',
            style: theme.textTheme.headlineMedium,
          ),
          const SizedBox(height: 12),
          Text(
            'Obsah bude doplněn. Zde budou tipy na správné sezení, ergonomii a čemu se vyhnout.',
            style: theme.textTheme.bodyMedium,
          ),
          // TODO: add tip cards, illustrations
        ],
      ),
    );
  }
}
