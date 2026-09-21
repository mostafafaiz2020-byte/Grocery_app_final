// widgets/7_explor_product.dart
import 'package:flutter/material.dart';

Widget explor_product({
  required String image,
  required String titel,
  required int color,
}) {
  return Container(
    decoration: BoxDecoration(
      color: Color(color),
      borderRadius: BorderRadius.circular(19),
    ),
    padding: const EdgeInsets.all(18),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(child: Image.asset(image, fit: BoxFit.contain)),

        const SizedBox(height: 8),

        Text(
          titel,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
        ),
      ],
    ),
  );
}
