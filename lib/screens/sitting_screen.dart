// ignore_for_file: unnecessary_to_list_in_spreads

import 'package:flutter/material.dart';
import '../utils/seo.dart';
import '../lang/app_localizations.dart';
import '../theme.dart';
import '../widgets/video_hero.dart';

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
      title: 'Správné držení těla – PolyBag',
      description: 'Tipy na ergonomii, správné držení těla a čemu se vyhnout při dlouhém sezení.',
    );
  }

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context);
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(title: Text(loc.correctSitting)),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text(loc.sittingHeading, style: theme.textTheme.headlineMedium),
          const SizedBox(height: 16),
          Text(loc.sittingSubtext, style: theme.textTheme.bodyMedium),
          const SizedBox(height: 24),
          ...loc.sittingTips.map((tip) => Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          color: PolyBagColors.secondary,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: VideoHero(
                          videoFile: tip['video']!,
                          title: tip['title']!,
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Text(
                          tip['title']!,
                          style: theme.textTheme.titleMedium?.copyWith(
                            fontWeight: FontWeight.w700,
                            color: PolyBagColors.primary,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Text(
                    tip['desc']!,
                    style: theme.textTheme.bodyLarge?.copyWith(height: 1.5),
                  ),
                  const SizedBox(height: 20),
                  ExpansionTile(
                    title: Text(
                      loc.howToDoIt,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        color: PolyBagColors.primary,
                      ),
                    ),
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: _buildBulletList(tip['jakNaTo']!),
                      ),
                    ],
                  ),
                  ExpansionTile(
                    title: Text(
                      loc.watchOutFor,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        color: PolyBagColors.error,
                      ),
                    ),
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(12),
                        child: _buildBulletList(tip['pozor']!),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
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
                  Text(loc.sittingTipTitle, style: theme.textTheme.titleLarge),
                  const SizedBox(height: 8),
                  Text(
                    loc.sittingTipText,
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

  Widget _buildBulletList(String text) {
    return Text(
      text.replaceAll('\\n', '\n'),
      style: const TextStyle(height: 1.6),
    );
  }
}
