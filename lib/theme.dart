// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';


// PolyBag brand palette — teal from logo, white backgrounds
class PolyBagColors {
  static const Color primary        = Color(0xFF40CDBB); // logo teal
  static const Color primaryText    = Color(0xFFFFFFFF); // white on teal
  static const Color secondary      = Color(0xFFD6F5F1); // light teal tint
  static const Color secondaryText  = Color(0xFF515151);
  static const Color background     = Color(0xFFFFFFFF);
  static const Color surface        = Color(0xFFD6F5F1);
  static const Color subtext        = Color(0xFF767676);
  static const Color error          = Color(0xFFAA0000);
}

ThemeData buildAppTheme() {
  final colorScheme = ColorScheme.fromSeed(
    seedColor: PolyBagColors.primary,
    primary: PolyBagColors.primary,
    onPrimary: PolyBagColors.primaryText,
    secondary: PolyBagColors.secondary,
    onSecondary: PolyBagColors.secondaryText,
    background: PolyBagColors.background,
    surface: PolyBagColors.surface,
    error: PolyBagColors.error,
    brightness: Brightness.light,
  );

  return ThemeData(
    useMaterial3: true,
    colorScheme: colorScheme,
    scaffoldBackgroundColor: PolyBagColors.background,

    appBarTheme: const AppBarTheme(
      backgroundColor: PolyBagColors.primary,
      foregroundColor: PolyBagColors.primaryText,
      elevation: 0,
      centerTitle: true,
      titleTextStyle: TextStyle(
        fontFamily: 'sans-serif',
        fontSize: 18,
        fontWeight: FontWeight.w600,
        color: PolyBagColors.primaryText,
      ),
    ),

    navigationBarTheme: NavigationBarThemeData(
      backgroundColor: PolyBagColors.background,
      indicatorColor: PolyBagColors.primary.withOpacity(0.15),
      iconTheme: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return const IconThemeData(color: PolyBagColors.primary);
        }
        return const IconThemeData(color: PolyBagColors.subtext);
      }),
      labelTextStyle: WidgetStateProperty.resolveWith((states) {
        if (states.contains(WidgetState.selected)) {
          return const TextStyle(
            color: PolyBagColors.primary,
            fontWeight: FontWeight.w600,
            fontSize: 12,
          );
        }
        return const TextStyle(
          color: PolyBagColors.subtext,
          fontSize: 12,
        );
      }),
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: PolyBagColors.primary,
        foregroundColor: PolyBagColors.primaryText,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
      ),
    ),

    cardTheme: CardThemeData(
      color: PolyBagColors.background,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: const BorderSide(color: PolyBagColors.secondary, width: 1.5),
      ),
    ),

    textTheme: const TextTheme(
      headlineMedium: TextStyle(
        color: PolyBagColors.secondaryText,
        fontWeight: FontWeight.w700,
        fontSize: 22,
      ),
      titleMedium: TextStyle(
        color: PolyBagColors.secondaryText,
        fontWeight: FontWeight.w600,
        fontSize: 16,
      ),
      bodyMedium: TextStyle(
        color: PolyBagColors.secondaryText,
        fontSize: 15,
        height: 1.6,
      ),
      bodySmall: TextStyle(
        color: PolyBagColors.subtext,
        fontSize: 13,
      ),
    ),
  );
}
