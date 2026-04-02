// ignore_for_file: unnecessary_to_list_in_spreads

import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../../utils/seo.dart';
import '../../utils/constants.dart';
import '../../theme.dart';

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
      title: '${PolyBagStrings.correctSitting} – ${PolyBagStrings.appTitle}',
      description: 'Tipy na ergonomii, správné držení těla a čemu se vyhnout při dlouhém sezení.',
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(title: const Text(PolyBagStrings.correctSitting)),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text(
            'Správná poloha při sezení',
            style: theme.textTheme.headlineMedium,
          ),
          const SizedBox(height: 16),
          Text(
            'Zde jsou klíčové tipy pro zdravé sezení během celého dne. Aplikuj je postupně!',
            style: theme.textTheme.bodyMedium,
          ),
          const SizedBox(height: 24),
          ...PolyBagStrings.sittingTips.map((tip) => Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: CachedNetworkImage(
                      imageUrl: _getTipImage(tip['title']!),
                      width: 80,
                      height: 80,
                      fit: BoxFit.cover,
                      placeholder: (context, url) => Container(
                        color: PolyBagColors.secondary,
                        child: const Icon(Icons.chair, color: Colors.white70),
                      ),
                      errorWidget: (context, url, error) => Container(
                        color: PolyBagColors.secondary,
                        child: const Icon(Icons.help_outline, color: Colors.white70),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          tip['title']!,
                          style: theme.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          tip['desc']!,
                          style: theme.textTheme.bodyMedium,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )).toList(),
          const SizedBox(height: 32),
          Card(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  const Icon(Icons.lightbulb, size: 48, color: PolyBagColors.primary),
                  const SizedBox(height: 12),
                  Text(
                    'Pro lepší výsledky',
                    style: theme.textTheme.titleLarge,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Kombinuj s kompenzačními cvičeními a podsedákem PolyBag!',
                    style: theme.textTheme.bodyMedium,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  String _getTipImage(String title) {
    // Placeholder images from Unsplash (ergonomics theme)
    final images = {
      'Nohy na zemi': 'https://images.unsplash.com/photo-1581578731548-67da953d1a8e?w=300&h=300&fit=crop',
      'Záda rovná': 'https://images.unsplash.com/photo-1576092768241-dec231879fc3?w=300&h=300&fit=crop',
      'Lokty v 90°': 'https://images.unsplash.com/photo-1587978083180-b74c7b9e3c2a?w=300&h=300&fit=crop',
      'Pohled dopředu': 'https://images.unsplash.com/photo-1517433456452-f9633a875f6f?w=300&h=300&fit=crop',
      'Přestávky': 'https://images.unsplash.com/photo-1506869640315-07166e15582d?w=300&h=300&fit=crop',
      'Hydratace': 'https://images.unsplash.com/photo-1576091160399-112ba8d25d1f?w=300&h=300&fit=crop',
    };
    return images[title] ?? 'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?w=300&h=300&fit=crop';
  }
}

