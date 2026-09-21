// widgets/7_Filters.dart
import 'package:flutter/material.dart';
import 'package:flutter_checkbox/flutter_checkbox.dart';

class Filters extends StatefulWidget {
  const Filters({super.key});

  @override
  State<Filters> createState() => _FiltersState();
}

class _FiltersState extends State<Filters> {
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
  bool isChecked4 = false;
  bool isChecked5 = false;
  bool isChecked6 = false;
  bool isChecked7 = false;
  bool isChecked8 = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(30),
        topRight: Radius.circular(30),
      ),
      child: SafeArea(
        top: false,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(Icons.close),
                  ),

                  const Expanded(
                    child: Text(
                      'Filters',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff181725),
                      ),
                    ),
                  ),

                  const SizedBox(width: 24),
                ],
              ),
            ),

            Flexible(
              child: SingleChildScrollView(
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                    color: Color.fromARGB(255, 223, 222, 222),
                  ),
                  padding: const EdgeInsets.fromLTRB(25, 30, 25, 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Categories',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      const SizedBox(height: 20),

                      _checkRow('Eggs', isChecked1, (value) {
                        setState(() {
                          isChecked1 = value;
                        });
                      }),

                      _checkRow('Noodles & Pasta', isChecked2, (value) {
                        setState(() {
                          isChecked2 = value;
                        });
                      }),

                      _checkRow('Chips & Crisps', isChecked3, (value) {
                        setState(() {
                          isChecked3 = value;
                        });
                      }),

                      _checkRow('Fast Food', isChecked4, (value) {
                        setState(() {
                          isChecked4 = value;
                        });
                      }),

                      const SizedBox(height: 25),

                      const Text(
                        'Brand',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      const SizedBox(height: 20),

                      _checkRow('Individual Callection', isChecked5, (value) {
                        setState(() {
                          isChecked5 = value;
                        });
                      }),

                      _checkRow('Cocola', isChecked6, (value) {
                        setState(() {
                          isChecked6 = value;
                        });
                      }),

                      _checkRow('Ifad', isChecked7, (value) {
                        setState(() {
                          isChecked7 = value;
                        });
                      }),

                      _checkRow('Kazi Farmas', isChecked8, (value) {
                        setState(() {
                          isChecked8 = value;
                        });
                      }),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _checkRow(String text, bool value, ValueChanged<bool> onChanged) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 18),
      child: Row(
        children: [
          FlutterCheckbox(
            value: value,
            onChanged: (newValue) {
              onChanged(newValue ?? false);
            },
          ),

          const SizedBox(width: 10),

          Expanded(
            child: Text(
              text,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }
}
