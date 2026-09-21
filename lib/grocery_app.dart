// grocery_app.dart
import 'package:flutter/material.dart';
import 'package:grocery_app1/screens/0-home0.dart';

class GroceryApp extends StatelessWidget {
  const GroceryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}
