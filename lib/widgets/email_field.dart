// widgets/email_field.dart
import 'package:flutter/material.dart';

class EmailField extends StatelessWidget {
  final TextEditingController controller;
  final ValueChanged<String> onChanged;

  const EmailField({
    super.key,
    required this.controller,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Email',
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 8),
        TextFormField(
          controller: controller,
          keyboardType: TextInputType.emailAddress,
          onChanged: onChanged,
          decoration: InputDecoration(
            hintText: 'Enter your email',
            border: const UnderlineInputBorder(),
            suffixIcon: controller.text.contains('@')
                ? const Icon(Icons.check, color: Color(0xFF53B878))
                : null,
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Enter your email';
            }

            if (!value.contains('@')) {
              return 'Enter a valid email';
            }

            return null;
          },
        ),
      ],
    );
  }
}
