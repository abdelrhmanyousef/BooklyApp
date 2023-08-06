import 'package:flutter/material.dart';

import '../../../../../../core/utiles/Widget/CustomButton.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomButton(
            Textcolor: Colors.black,
            backgroundcolor: Colors.white,
            text: "19.99€",
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16), bottomLeft: Radius.circular(16)),
          ),
        ),
        Expanded(
          child: CustomButton(
            Textcolor: Colors.white,
            backgroundcolor: Color(0xffEF8262),
            text: "Free preview",
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16)),
          ),
        ),
      ],
    );
  }
}
