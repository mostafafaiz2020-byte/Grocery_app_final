// screens/6-Cart.dart
import 'package:flutter/material.dart';
import 'package:grocery_app1/widgets/6_cart_product.dart';
import 'package:grocery_app1/widgets/6_chek_botton.dart' hide cartproduct;
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

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
                '🛒 𝑴𝒚 𝑪𝒂𝒓𝒕 🛒',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800),
              ),
            ),

            const SizedBox(height: 25),

            const Divider(color: Colors.black),

            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  cartproduct(
                    image: "assets/images/Bell Pepper Red.png",
                    name: "Bell Pepper Red",
                    price: "\$4.99",
                    detail: "1kg, Price",
                  ),
                  const Divider(color: Colors.black),

                  cartproduct(
                    image: "assets/images/pngfuel 16.png",
                    name: "Egg Chicken Red",
                    price: "\$1.99",
                    detail: "4pcs, Price",
                  ),
                  const Divider(color: Colors.black),

                  cartproduct(
                    image: "assets/images/Bananas.png",
                    name: "Organic Bananas",
                    price: "\$3.00",
                    detail: "12kg, Price",
                  ),
                  const Divider(color: Colors.black),

                  cartproduct(
                    image: "assets/images/Ginger.png",
                    name: "Ginger",
                    price: "\$2.99",
                    detail: "250gm, Price",
                  ),
                  const Divider(color: Colors.black),

                  cartproduct(
                    image: "assets/images/Group 6874.png",
                    name: "Sprite Can",
                    detail: "325ml, Price",
                    price: "\$1.50",
                  ),

                  const Divider(color: Colors.black),

                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 15,
                    ),
                    child: SizedBox(
                      width: double.infinity,
                      height: 67,
                      child: GestureDetector(
                        onTap: () {
                          showMaterialModalBottomSheet(
                            context: context,
                            builder: (context) {
                              return const ChekBotton();
                            },
                          );
                        },
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: const Color(0xff53B175),
                            borderRadius: BorderRadius.circular(19),
                          ),
                          child: const Text(
                            "Go to Checkout",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w800,
                              color: Color(0XFFFCFCFC),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
