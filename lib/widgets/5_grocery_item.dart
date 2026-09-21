// widgets/5_grocery_item.dart
import 'package:flutter/material.dart';
import 'package:grocery_app1/model/Groceries_model.dart';

class GroceryItem extends StatelessWidget {
  final ProductModel2 productModel2;

  const GroceryItem({super.key, required this.productModel2});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: const Color(0xffF8A44C),
        border: Border.all(color: const Color.fromARGB(255, 179, 172, 172)),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        children: [
          Image.asset(
            productModel2.image,
            width: 50,
            height: 50,
            fit: BoxFit.contain,
          ),

          const SizedBox(width: 15),

          Expanded(
            child: Text(
              productModel2.titel,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }
}
