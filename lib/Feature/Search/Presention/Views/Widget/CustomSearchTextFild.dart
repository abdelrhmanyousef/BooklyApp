import 'package:flutter/material.dart';

class CustomSearchTextFild extends StatelessWidget {
  const CustomSearchTextFild({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          enabledBorder: BuildOutLineInputBorder(),
          focusedBorder: BuildOutLineInputBorder(),
          hintText: "Search",
          suffixIcon:
              IconButton(onPressed: () {}, icon: const Icon(Icons.search))),
    );
  }

  OutlineInputBorder BuildOutLineInputBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: const BorderSide(color: Colors.white));
  }
}
