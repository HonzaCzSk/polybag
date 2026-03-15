import 'package:go_router/go_router.dart';
import 'screens/sitting_screen.dart';
import 'screens/exercises_screen.dart';
import 'screens/products_screen.dart';
import 'screens/about_screen.dart';
import 'widgets/nav_shell.dart';

final router = GoRouter(
  initialLocation: '/sedeni',
  routes: [
    ShellRoute(
      builder: (context, state, child) => NavShell(child: child),
      routes: [
        GoRoute(
          path: '/sedeni',
          builder: (context, state) => const SittingScreen(),
        ),
        GoRoute(
          path: '/cviceni',
          builder: (context, state) => const ExercisesScreen(),
        ),
        GoRoute(
          path: '/produkty',
          builder: (context, state) => const ProductsScreen(),
        ),
        GoRoute(
          path: '/o-nas',
          builder: (context, state) => const AboutScreen(),
        ),
      ],
    ),
  ],
);
