import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:polybag/main.dart';
import 'package:polybag/screens/sitting_screen.dart';
import 'package:polybag/screens/exercises_screen.dart';

void main() {
  testWidgets('App starts with PolyBag title', (WidgetTester tester) async {
    await tester.pumpWidget(const PolyBagApp());
    expect(find.text('PolyBag'), findsOneWidget);
    expect(find.byType(GridView), findsOneWidget);
  });

  testWidgets('SittingScreen displays 6 tip cards', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(body: SittingScreen()),
      ),
    );
    expect(find.byType(Card), findsNWidgets(7)); // 6 tips + 1 bonus
    expect(find.text('Nohy na zemi'), findsOneWidget);
    expect(find.text('Pro lepší výsledky'), findsOneWidget);
  });

  testWidgets('ExercisesScreen displays 6 exercise cards', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(body: ExercisesScreen()),
      ),
    );
    expect(find.byType(Card), findsNWidgets(7)); // 6 exercises + 1 tip
    expect(find.text('Kočičí hřbet'), findsOneWidget);
    expect(find.text('Tip pro úspěch'), findsOneWidget);
  });
}

