// widgets/2_register_terms_text.dart
import 'package:flutter/material.dart';

class TermsText extends StatelessWidget {
  const TermsText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Wrap(
      children: [
        Text(
          'By continuing you agree to our ',
          style: TextStyle(fontSize: 12, color: Colors.grey),
        ),
        Text(
          'Terms of Service',
          style: TextStyle(fontSize: 12, color: Color(0xFF53B878)),
        ),
        Text(' and ', style: TextStyle(fontSize: 12, color: Colors.grey)),
        Text(
          'Privacy Policy.',
          style: TextStyle(fontSize: 12, color: Color(0xFF53B878)),
        ),
      ],
    );
  }
}
