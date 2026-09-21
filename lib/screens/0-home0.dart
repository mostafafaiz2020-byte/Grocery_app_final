// screens/0-home0.dart
import 'package:flutter/material.dart';
import 'package:grocery_app1/screens/1-home.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF52B879),
      body: SafeArea(
        child: Column(
          children: [
            const Spacer(),

            // Logo
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // صورة الجزرة
                Image.asset(
                  "assets/images/56546564.png",
                  width: 75,
                  height: 75,
                  fit: BoxFit.contain,
                ),

                const SizedBox(width: 8),

                // Nectar
                const Text(
                  'nectar',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 68,
                    fontWeight: FontWeight.w500,
                    height: 0.9,
                    letterSpacing: -2,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 8),

            // Online Groceries
            const Text(
              'o n l i n e   g r o c e r i e s',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w400,
                letterSpacing: 1.5,
              ),
            ),

            const Spacer(),

            // زرار الانتقال للـ Home
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 35),
              child: SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => Home()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: const Color(0xFF52B879),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: const Text(
                    'Get Started',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
