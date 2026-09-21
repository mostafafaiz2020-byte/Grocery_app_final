// widgets/6_Orderaccepted .dart
import 'package:flutter/material.dart';
import 'package:grocery_app1/screens/1-home.dart';
import 'package:grocery_app1/screens/4-BottomNavigationBar.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class Orderaccepted extends StatefulWidget {
  const Orderaccepted({super.key});

  @override
  State<Orderaccepted> createState() => _OrderacceptedState();
}

class _OrderacceptedState extends State<Orderaccepted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: double.infinity,
                height: MediaQuery.sizeOf(context).width * 0.65,
                child: Image.asset(
                  "assets/images/Group 6872.png",
                  fit: BoxFit.contain,
                ),
              ),

              const SizedBox(height: 30),

              const Text(
                "Your Order has been",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff181725),
                ),
              ),

              const Text(
                "accepted",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff181725),
                ),
              ),

              const SizedBox(height: 20),

              const Text(
                "Your items has been placcd and is on "
                "it’s way to being processed",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff7C7C7C),
                ),
              ),

              const SizedBox(height: 60),

              SizedBox(
                width: double.infinity,
                height: 67,
                child: GestureDetector(
                  onTap: () {
                    showMaterialModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return const BottomNavigationScreen();
                      },
                    );
                  },
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 101, 194, 101),
                      borderRadius: BorderRadius.circular(19),
                    ),
                    child: const Text(
                      "Track Order",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        color: Color.fromARGB(255, 235, 234, 234),
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 10),

              SizedBox(
                width: double.infinity,
                height: 67,
                child: GestureDetector(
                  onTap: () {
                    showMaterialModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return const Home();
                      },
                    );
                  },
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 216, 217, 216),
                      borderRadius: BorderRadius.circular(19),
                    ),
                    child: const Text(
                      "Back to home",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
