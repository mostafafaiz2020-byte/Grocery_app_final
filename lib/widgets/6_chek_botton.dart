// widgets/6_chek_botton.dart
import 'package:flutter/material.dart';
import 'package:grocery_app1/widgets/6_Orderaccepted%20.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class ChekBotton extends StatelessWidget {
  const ChekBotton({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(25),
        topRight: Radius.circular(25),
      ),
      child: SafeArea(
        top: false,
        child: SingleChildScrollView(
          controller: ModalScrollController.of(context),
          padding: const EdgeInsets.all(25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Expanded(
                    child: Text(
                      "Checkout",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.close, size: 28),
                  ),
                ],
              ),

              const Divider(),

              const _CheckoutRow(title: 'Delivery', value: 'Select Method'),

              const Divider(),

              const _CheckoutRow(title: 'Pament', value: 'Select Method'),

              const Divider(),

              const _CheckoutRow(title: 'Promo Code', value: 'Pick discount'),

              const Divider(),

              const _CheckoutRow(title: 'Total Cost', value: '\$13.97'),

              const Divider(),

              const SizedBox(height: 25),

              const Text(
                "By placing an order you agree to ourTerms And Conditions",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),

              const SizedBox(height: 30),

              SizedBox(
                width: double.infinity,
                height: 67,
                child: GestureDetector(
                  onTap: () {
                    showMaterialModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return const Orderaccepted();
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
                      "Place Order",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        color: Color(0XFFFCFCFC),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _CheckoutRow extends StatelessWidget {
  final String title;
  final String value;

  const _CheckoutRow({required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              value,
              textAlign: TextAlign.end,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
          ),
          const SizedBox(width: 5),
          const Icon(Icons.arrow_forward_ios, size: 16),
        ],
      ),
    );
  }
}
