// widgets/2_register_login_row.dart
import 'package:flutter/material.dart';
import '../screens/3-loging.dart';

class LoginRow extends StatelessWidget {
  const LoginRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Wrap(
        alignment: WrapAlignment.center,
        children: [
          const Text(
            'Already have an account? ',
            style: TextStyle(
              fontSize: 13,
              color: Color(0xFF33333D),
              fontWeight: FontWeight.w500,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const LogingScrreen()),
              );
            },
            child: const Text(
              'Login',
              style: TextStyle(
                fontSize: 13,
                color: Color(0xFF53B878),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
