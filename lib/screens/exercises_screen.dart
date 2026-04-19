// ignore_for_file: unnecessary_to_list_in_spreads

import 'package:flutter/material.dart';
import '../utils/seo.dart';
import '../lang/app_localizations.dart';
import '../theme.dart';
import '../widgets/video_hero.dart';

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
    final loc = AppLocalizations.of(context);
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(title: Text(loc.exercises)),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text(loc.exercisesHeading, style: theme.textTheme.headlineMedium),
          const SizedBox(height: 16),
          Text(loc.exercisesSubtext, style: theme.textTheme.bodyMedium),
          const SizedBox(height: 24),
          ...loc.exercisesList.map((ex) => Card(
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
                          videoFile: ex['video']!,
                          title: ex['title']!,
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Text(
                          ex['title']!,
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
                    ex['desc']!,
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
                        child: _buildBulletList(ex['jakNaTo']!),
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
                        child: _buildBulletList(ex['pozor']!),
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
                  const Icon(Icons.favorite, size: 48, color: PolyBagColors.primary),
                  const SizedBox(height: 12),
                  Text(loc.exerciseTipTitle, style: theme.textTheme.titleLarge),
                  const SizedBox(height: 8),
                  Text(
                    loc.exerciseTipText,
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
