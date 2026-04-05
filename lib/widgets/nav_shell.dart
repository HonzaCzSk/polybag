import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          tooltip: 'Zpět na úvod',
          onPressed: () => context.go('/'),
        ),
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
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.chair_outlined),
            selectedIcon: Icon(Icons.person),
            label: 'Postoj a sezení',
          ),
          NavigationDestination(
            icon: Icon(Icons.fitness_center_outlined),
            selectedIcon: Icon(Icons.fitness_center),
            label: 'Cvičení',
          ),
          NavigationDestination(
            icon: Icon(Icons.shopping_bag_outlined),
            selectedIcon: Icon(Icons.shopping_bag),
            label: 'Produkty',
          ),
          NavigationDestination(
            icon: Icon(Icons.info_outline),
            selectedIcon: Icon(Icons.info),
            label: 'O nás',
          ),
        ],
      ),
    );
  }
}
