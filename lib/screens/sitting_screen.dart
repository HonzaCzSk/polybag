import 'package:flutter/material.dart';
import '../utils/seo.dart';

class SittingScreen extends StatefulWidget {
  const SittingScreen({super.key});
  @override
  State<SittingScreen> createState() => _SittingScreenState();
}

class _SittingScreenState extends State<SittingScreen> {
  @override
  void initState() {
    super.initState();
    SeoHelper.set(
      title: 'Jak správně sedět – PolyBag',
      description: 'Tipy na ergonomii, správné držení těla a čemu se vyhnout při dlouhém sezení.',
    );
  }

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
