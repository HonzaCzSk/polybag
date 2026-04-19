import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../lang/app_localizations.dart';
import 'lang_toggle.dart';

class NavShell extends StatelessWidget {
  final Widget child;
  const NavShell({super.key, required this.child});

  int _currentIndex(BuildContext context) {
    final location = GoRouterState.of(context).uri.path;
    if (location.startsWith('/sedeni'))   return 0;
    if (location.startsWith('/cviceni'))  return 1;
    if (location.startsWith('/produkty')) return 2;
    if (location.startsWith('/o-nas'))    return 3;
    return 0;
  }

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          tooltip: loc.backToHome,
          onPressed: () => context.go('/'),
        ),
        actions: const [LangToggle()],
      ),
      body: child,
      bottomNavigationBar: NavigationBar(
        selectedIndex: _currentIndex(context),
        onDestinationSelected: (index) {
          switch (index) {
            case 0: context.go('/sedeni');   break;
            case 1: context.go('/cviceni');  break;
            case 2: context.go('/produkty'); break;
            case 3: context.go('/o-nas');    break;
          }
        },
        destinations: [
          NavigationDestination(
            icon: const Icon(Icons.person_outline),
            selectedIcon: const Icon(Icons.person),
            label: loc.navPosture,
          ),
          NavigationDestination(
            icon: const Icon(Icons.fitness_center_outlined),
            selectedIcon: const Icon(Icons.fitness_center),
            label: loc.navExercises,
          ),
          NavigationDestination(
            icon: const Icon(Icons.shopping_bag_outlined),
            selectedIcon: const Icon(Icons.shopping_bag),
            label: loc.navProducts,
          ),
          NavigationDestination(
            icon: const Icon(Icons.info_outline),
            selectedIcon: const Icon(Icons.info),
            label: loc.navAbout,
          ),
        ],
      ),
    );
  }
}
