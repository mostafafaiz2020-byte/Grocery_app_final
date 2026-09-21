// widgets/5_Best Selling.dart

import 'package:flutter/material.dart';
import 'package:grocery_app1/model/product_model.dart';
import 'package:grocery_app1/widgets/5_product_item.dart';

class Bestselling extends StatelessWidget {
  const Bestselling({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Expanded(
              child: Text(
                'Best Selling',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24),
              ),
            ),
            const Text(
              'See all',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: Color(0xff53B175),
              ),
            ),
          ],
        ),

        const SizedBox(height: 20),

        SizedBox(
          height: 248.51,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: product_Best_Selling.length,
            itemBuilder: (context, index) {
              final ProductModel product = product_Best_Selling[index];

              return Exclusive(productModel: product);
            },
            separatorBuilder: (context, index) {
              return const SizedBox(width: 10);
            },
          ),
        ),
      ],
    );
  }
}
