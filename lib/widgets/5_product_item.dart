// widgets/5_product_item.dart
import 'package:flutter/material.dart';
import 'package:grocery_app1/model/product_model.dart';

class Exclusive extends StatelessWidget {
  final ProductModel productModel;

  const Exclusive({super.key, required this.productModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 25, right: 15, left: 15, bottom: 15),
      width: 173,
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xffE2E2E2)),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            productModel.image,
            height: 80,
            width: double.infinity,
            fit: BoxFit.contain,
          ),

          const SizedBox(height: 15),

          Text(
            productModel.titel,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
          ),

          Text(
            productModel.descripion,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
          ),

          const Spacer(),

          Row(
            children: [
              Expanded(
                child: Text(
                  '\$ ${productModel.price}',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),

              const SizedBox(width: 8),

              Container(
                padding: const EdgeInsets.all(14),
                decoration: BoxDecoration(
                  color: const Color(0xff53B175),
                  borderRadius: BorderRadius.circular(18),
                ),
                child: const Icon(Icons.add, color: Colors.white, size: 17),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

final List<ProductModel> products = [
  ProductModel(
    image: 'assets/images/Bananas.png',
    titel: 'Organic Bananas',
    descripion: '7pcs, Priceg',
    price: 4.5,
  ),
  ProductModel(
    image: 'assets/images/pngfuel 1 (2).png',
    titel: 'Red Apple',
    descripion: '1kg, Priceg',
    price: 8,
  ),
  ProductModel(
    image: 'assets/images/carrot.png',
    titel: 'Organic Bananas',
    descripion: '7pcs, Priceg',
    price: 4,
  ),
  ProductModel(
    image: 'assets/images/Ginger.png',
    titel: 'Organic Bananas',
    descripion: '7pcs, Priceg',
    price: 6,
  ),
  ProductModel(
    image: 'assets/images/Bell Pepper Red.png',
    titel: 'Organic Bananas',
    descripion: '7pcs, Priceg',
    price: 9,
  ),
];

final List<ProductModel> product_Best_Selling = [
  ProductModel(
    image: 'assets/images/pngfuel 9.png',
    titel: 'Meat & Fish',
    descripion: '7pcs, Priceg',
    price: 4.5,
  ),
  ProductModel(
    image: 'assets/images/pngfuel 6.png',
    titel: 'Beverages',
    descripion: '1kg, Priceg',
    price: 8,
  ),
  ProductModel(
    image: 'assets/images/pngfuel 16.png',
    titel: 'Egg Chicken Red',
    descripion: '4pcs, Price',
    price: 15,
  ),
  ProductModel(
    image: '',
    titel: 'Egg Pasta ',
    descripion: '30gm, Price',
    price: 15.99,
  ),
  ProductModel(
    image: 'assets/images/American-Garden-Mayonnaise-Eggless-473ml 2.png',
    titel: 'Mayonnais Eggless',
    descripion: '7pcs, Priceg',
    price: 9,
  ),
];
