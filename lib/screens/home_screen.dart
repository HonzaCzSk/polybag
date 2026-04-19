// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../theme.dart';
import '../lang/app_localizations.dart';
import '../widgets/lang_toggle.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context);
    return Scaffold(
      backgroundColor: PolyBagColors.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 12),
              // Logo + title + lang toggle
              Row(
                children: [
                  Image.asset(
                    'assets/images/Icon-192.png',
                    width: 52,
                    height: 52,
                    errorBuilder: (_, __, ___) => Container(
                      width: 52,
                      height: 52,
                      decoration: const BoxDecoration(
                        color: PolyBagColors.primary,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  const SizedBox(width: 14),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          loc.appTitle,
                          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                            fontWeight: FontWeight.w800,
                            color: PolyBagColors.primary,
                          ),
                        ),
                        Text(
                          loc.healthySitting,
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                      ],
                    ),
                  ),
                  const LangToggle(),
                ],
              ),
              const SizedBox(height: 32),
              Text(
                loc.whatInterestsYou,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 16),
              // Cards grid
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 14,
                  crossAxisSpacing: 14,
                  children: [
                    _MenuCard(
                      icon: Icons.person,
                      title: loc.cardPostureTitle,
                      subtitle: loc.cardPostureSubtitle,
                      route: '/sedeni',
                      color: const Color(0xFF40CDBB),
                    ),
                    _MenuCard(
                      icon: Icons.fitness_center,
                      title: loc.cardExercisesTitle,
                      subtitle: loc.cardExercisesSubtitle,
                      route: '/cviceni',
                      color: const Color(0xFF2AAFA0),
                    ),
                    _MenuCard(
                      icon: Icons.shopping_bag,
                      title: loc.cardProductsTitle,
                      subtitle: loc.cardProductsSubtitle,
                      route: '/produkty',
                      color: const Color(0xFF40CDBB),
                    ),
                    _MenuCard(
                      icon: Icons.info,
                      title: loc.cardAboutTitle,
                      subtitle: loc.cardAboutSubtitle,
                      route: '/o-nas',
                      color: const Color(0xFF2AAFA0),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _MenuCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final String route;
  final Color color;

  const _MenuCard({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.route,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.go(route),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 120),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: color.withValues(alpha: color.alpha * 0.35),
              blurRadius: 12,
              offset: const Offset(0, 6),
            ),
          ],
        ),
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(icon, color: Colors.white, size: 36),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    height: 1.2,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: TextStyle(
                    color: Colors.white.withValues(alpha: 0.8),
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
