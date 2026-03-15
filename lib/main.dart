import 'package:flutter/material.dart';
import 'app.dart';
import 'theme.dart';

void main() {
  runApp(const PolyBagApp());
}

class PolyBagApp extends StatelessWidget {
  const PolyBagApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'PolyBag',
      theme: buildAppTheme(),
      routerConfig: router,
      debugShowCheckedModeBanner: false,
    );
  }
}
