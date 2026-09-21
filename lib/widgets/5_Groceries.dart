// widgets/5_Groceries.dart
import 'package:flutter/material.dart';

import 'package:grocery_app1/model/Groceries_model.dart';
import 'package:grocery_app1/model/product_model.dart';
import 'package:grocery_app1/widgets/5_grocery_item.dart';
import 'package:grocery_app1/widgets/5_product_item.dart';

class Groceries extends StatelessWidget {
  const Groceries({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Expanded(
              child: Text(
                'Groceries',
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
          height: 100.51,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: groceriesProducts.length,
            itemBuilder: (context, index) {
              final ProductModel2 product = groceriesProducts[index];

              return GroceryItem(productModel2: product);
            },
            separatorBuilder: (context, index) {
              return const SizedBox(width: 10);
            },
          ),
        ),

        const SizedBox(height: 15),

        SizedBox(
          height: 248.51,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: products_Meat.length,
            itemBuilder: (context, index) {
              final ProductModel product = products_Meat[index];

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

final List<ProductModel2> groceriesProducts = [
  ProductModel2(image: 'assets/images/gg.png', titel: 'Pulses'),
  ProductModel2(image: 'assets/images/ss.png', titel: 'Rice'),
];

final List<ProductModel> products_Meat = [
  ProductModel(
    image: 'assets/images/pngfuel 4 (1).png',
    titel: 'Beef Bone',
    descripion: '1kg, Priceg',
    price: 4.5,
  ),
  ProductModel(
    image: 'assets/images/pngfuel 9.png',
    titel: 'Meat & Fish',
    descripion: '1kg, Priceg',
    price: 8,
  ),
  ProductModel(
    image: 'assets/images/Group 6837.png',
    titel: 'Dairy & Eggs',
    descripion: '1kg, Priceg',
    price: 4,
  ),
];
