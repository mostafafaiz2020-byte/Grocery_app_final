// screens/7-explor.dart
import 'package:flutter/material.dart';
import 'package:grocery_app1/widgets/5_shop_search.dart';
import 'package:grocery_app1/widgets/7_explor_product.dart';
import 'package:grocery_app1/widgets/7_Filters.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class Explor extends StatelessWidget {
  const Explor({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
          child: Column(
            children: [
              Row(
                children: [
                  const Expanded(
                    child: Text(
                      '𝑭𝒊𝒏𝒅 𝑷𝒓𝒐𝒅𝒖𝒄𝒕𝒔',
                      style: TextStyle(
                        color: Color(0xff181725),
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      showMaterialModalBottomSheet(
                        context: context,
                        builder: (context) {
                          return const Filters();
                        },
                      );
                    },
                    child: const Icon(Icons.tune, size: 28),
                  ),
                ],
              ),

              const SizedBox(height: 30),

              const SearchStore(),

              const SizedBox(height: 20),

              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  childAspectRatio: 0.92,
                  padding: const EdgeInsets.only(bottom: 20),
                  children: [
                    explor_product(
                      color: 0xff53B1751A,
                      titel: "Frash Fruits& Vegetable",
                      image: "assets/images/pngfuel 6 (1).png",
                    ),
                    explor_product(
                      color: 0xffF8A44C1A,
                      titel: "Cooking Oil& Ghee",
                      image: "assets/images/Group 6835.png",
                    ),
                    explor_product(
                      color: 0xffF7A59340,
                      titel: "Meat & Fish",
                      image: "assets/images/pngfuel 9.png",
                    ),
                    explor_product(
                      color: 0xffD3B0E040,
                      titel: "Bakery & Snacks",
                      image: "assets/images/pngfuel 6 (4).png",
                    ),
                    explor_product(
                      color: 0xffFDE59840,
                      titel: "Dairy & Eggs",
                      image: "assets/images/Group 6837.png",
                    ),
                    explor_product(
                      color: 0xffB7DFF5,
                      titel: "Beverages",
                      image: "assets/images/pngfuel 6 (3).png",
                    ),
                    explor_product(
                      color: 0xff53B1751A,
                      titel: "Fresh Products",
                      image: "assets/images/pngfuel 6 (3).png",
                    ),
                    explor_product(
                      color: 0xff53B1751A,
                      titel: "More Products",
                      image: "assets/images/pngfuel 6 (3).png",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
