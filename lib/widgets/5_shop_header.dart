// widgets/5_shop_header.dart
import 'package:flutter/material.dart';

class ShopHeader extends StatelessWidget {
  const ShopHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Image.asset(
            'assets/images/carrot.png',
            width: 55,
            height: 55,
            fit: BoxFit.contain,
          ),
        ),

        const SizedBox(height: 21),

        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            '𓆩♡𓆪 𝑾𝒆𝒍𝒄𝒐𝒎𝒆 𝒃𝒂𝒄𝒌, 𝑴𝒐𝒔𝒕𝒂𝒇𝒂 𓆩♡𓆪',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
              color: Color(0xff4C4F4D),
              fontSize: 18,
            ),
          ),
        ),
      ],
    );
  }
}
