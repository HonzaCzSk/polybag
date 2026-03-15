import 'package:flutter/material.dart';

class ExercisesScreen extends StatelessWidget {
  const ExercisesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(title: const Text('Kompenzační cvičení')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text(
            'Cvičení pro zdravá záda',
            style: theme.textTheme.headlineMedium,
          ),
          const SizedBox(height: 12),
          Text(
            'Obsah bude doplněn. Zde budou kompenzační cviky s popisem a obrázky.',
            style: theme.textTheme.bodyMedium,
          ),
          // TODO: add exercise cards with images and step-by-step descriptions
        ],
      ),
    );
  }
}
