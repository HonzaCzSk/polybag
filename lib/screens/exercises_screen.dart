import 'package:flutter/material.dart';
import '../utils/seo.dart';

class ExercisesScreen extends StatefulWidget {
  const ExercisesScreen({super.key});
  @override
  State<ExercisesScreen> createState() => _ExercisesScreenState();
}

class _ExercisesScreenState extends State<ExercisesScreen> {
  @override
  void initState() {
    super.initState();
    SeoHelper.set(
      title: 'Kompenzační cvičení – PolyBag',
      description: 'Cvičení pro zdravá záda a správné držení těla. Kompenzační cviky pro každý den.',
    );
  }

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
        ],
      ),
    );
  }
}
