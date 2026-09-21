// screens/5-Shop.dart
import 'package:flutter/material.dart';

import 'package:grocery_app1/widgets/5_%20Shop%20Slider.dart';
import 'package:grocery_app1/widgets/5_Exclusive%20Offer.dart';
import 'package:grocery_app1/widgets/5_Best%20Selling.dart';
import 'package:grocery_app1/widgets/5_Groceries.dart';
import '../widgets/5_shop_header.dart';
import '../widgets/5_shop_search.dart';

class Shop extends StatefulWidget {
  const Shop({super.key});

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
              ShopHeader(),
              SizedBox(height: 20),
              SearchStore(),
              SizedBox(height: 20),
              SliderWidget(),
              SizedBox(height: 20),
              Exclusiveoffer(),
              SizedBox(height: 30),
              Bestselling(),
              SizedBox(height: 30),
              Groceries(),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
