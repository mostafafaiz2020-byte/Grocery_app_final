// widgets/6_cart_product.dart
import 'package:flutter/material.dart';

Widget cartproduct({
  required String image,
  required String name,
  required String detail,
  required String price,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(image, width: 75, height: 85, fit: BoxFit.contain),

        const SizedBox(width: 14),

        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),

              Text(
                detail,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff7C7C7C),
                ),
              ),

              const SizedBox(height: 12),

              Row(
                children: [
                  const Icon(Icons.remove),

                  const SizedBox(width: 12),

                  Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      color: const Color(0xffE2E2E2),
                      borderRadius: BorderRadius.circular(17),
                    ),
                    child: const Center(
                      child: Text('1', style: TextStyle(fontSize: 18)),
                    ),
                  ),

                  const SizedBox(width: 12),

                  const Icon(Icons.add),

                  const Spacer(),

                  Text(
                    price,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
