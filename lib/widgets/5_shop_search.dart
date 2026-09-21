// widgets/5_shop_search.dart
import 'package:flutter/material.dart';

class SearchStore extends StatelessWidget {
  const SearchStore({super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: const Color(0xff53B175),
      onTapOutside: (_) {
        FocusScope.of(context).unfocus();
      },
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.search),
        hintText: 'search Store',
        fillColor: const Color(0xffF2F3F2),
        filled: true,
        contentPadding: const EdgeInsets.symmetric(
          vertical: 14,
          horizontal: 16,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(15),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
