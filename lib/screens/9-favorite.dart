// screens/9-favorite.dart

import 'package:flutter/material.dart';

class Favorite extends StatelessWidget {
  const Favorite({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 6, right: 24, left: 24),
              child: Text(
                '𓆩♡𓆪 𝑭𝒂𝒗𝒐𝒓𝒊𝒕𝒆 𓆩♡𓆪',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
              ),
            ),

            const SizedBox(height: 25),

            const Divider(color: Colors.black),

            Expanded(
              child: ListView(
                children: [
                  buildProductItem(
                    image: "assets/images/Group 6874.png",
                    name: "Sprite Can",
                    detail: "325ml, Price",
                    price: "\$1.50",
                  ),
                  const Divider(color: Colors.black),

                  buildProductItem(
                    image: "assets/images/2.png",
                    name: "Diet Coke",
                    detail: "325ml, Price",
                    price: "\$1.95",
                  ),
                  const Divider(color: Colors.black),

                  buildProductItem(
                    image: "assets/images/3.png",
                    name: "Apple & Grape Juice",
                    detail: "2L, Price",
                    price: "\$15.50",
                  ),
                  const Divider(color: Colors.black),

                  buildProductItem(
                    image: "assets/images/4.png",
                    name: "Coca Cola Can",
                    detail: "325ml, Price",
                    price: "\$4.99",
                  ),
                  const Divider(color: Colors.black),

                  buildProductItem(
                    image: "assets/images/5.png",
                    name: "Pepsi Can",
                    detail: "325ml, Price",
                    price: "\$4.99",
                  ),
                  const Divider(color: Colors.black),

                  buildProductItem(
                    image: "assets/images/4.png",
                    name: "Coca Cola Can",
                    detail: "325ml, Price",
                    price: "\$4.99",
                  ),
                  const Divider(color: Colors.black),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(
                top: 15,
                right: 20,
                left: 20,
                bottom: 20,
              ),
              child: SizedBox(
                width: double.infinity,
                height: 67,
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: const Color(0xff53B175),
                    borderRadius: BorderRadius.circular(19),
                  ),
                  child: const Text(
                    "Add All To Cart",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  static Widget buildProductItem({
    required String image,
    required String name,
    required String detail,
    required String price,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Row(
        children: [
          Image.asset(image, width: 70, height: 70, fit: BoxFit.contain),

          const SizedBox(width: 15),

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
                    fontWeight: FontWeight.w500,
                  ),
                ),

                const SizedBox(height: 5),

                Text(
                  detail,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(width: 8),

          Text(
            price,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),

          const SizedBox(width: 8),

          const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.black54),
        ],
      ),
    );
  }
}
