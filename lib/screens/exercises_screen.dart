// ignore_for_file: unnecessary_to_list_in_spreads

import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../../utils/seo.dart';
import '../../utils/constants.dart';
import '../../theme.dart';

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
      title: '${PolyBagStrings.exercises} – ${PolyBagStrings.appTitle}',
      description: 'Cvičení pro zdravá záda a správné držení těla. Kompenzační cviky pro každý den.',
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(title: const Text(PolyBagStrings.exercises)),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text(
            'Cvičení pro zdravá záda',
            style: theme.textTheme.headlineMedium,
          ),
          const SizedBox(height: 16),
          Text(
            'Vyzkoušej tyto jednoduché cviky po každé hodině sezení. Každý cvik 2-3x denně!',
            style: theme.textTheme.bodyMedium,
          ),
          const SizedBox(height: 24),
          ...PolyBagStrings.exercisesList.map((ex) => Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: CachedNetworkImage(
                      imageUrl: _getExerciseImage(ex['title']!),
                      width: 80,
                      height: 80,
                      fit: BoxFit.cover,
                      placeholder: (context, url) => Container(
                        color: PolyBagColors.secondary,
                        child: const Icon(Icons.fitness_center, color: Colors.white70),
                      ),
                      errorWidget: (context, url, error) => Container(
                        color: PolyBagColors.secondary,
                        child: const Icon(Icons.fitness_center_outlined, color: Colors.white70),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          ex['title']!,
                          style: theme.textTheme.titleMedium?.copyWith(fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          ex['desc']!,
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
                  const Icon(Icons.favorite, size: 48, color: PolyBagColors.primary),
                  const SizedBox(height: 12),
                  Text(
                    'Tip pro úspěch',
                    style: theme.textTheme.titleLarge,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Dýchej zhluboka, cviky dělej pomalu a pravidelně. Za týden uvidíš rozdíl!',
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

  String _getExerciseImage(String title) {
    // Unsplash exercise images (back/stretching)
    final images = {
      'Kočičí hřbet': 'https://images.unsplash.com/photo-1571019613454-1cb2f99b2d8b?w=300&h=300&fit=crop',
      'Protáhnutí hrudníku': 'https://images.unsplash.com/photo-1518509562904-e7dd732ac1a4?w=300&h=300&fit=crop',
      'Rotace trupu': 'https://images.unsplash.com/photo-1603599265434-10e9f10ce632?w=300&h=300&fit=crop',
      'Mostek': 'https://images.unsplash.com/photo-1578683872257-e53994c3d3b8?w=300&h=300&fit=crop',
      'Protáhnutí krku': 'https://images.unsplash.com/photo-1612314907314-e2510e8256a0?w=300&h=300&fit=crop',
      'Otřepání': 'https://images.unsplash.com/photo-1512291357285-89695958bd67?w=300&h=300&fit=crop',
    };
    return images[title] ?? 'https://images.unsplash.com/photo-1571019613454-1cb2f99b2d8b?w=300&h=300&fit=crop';
  }
}

