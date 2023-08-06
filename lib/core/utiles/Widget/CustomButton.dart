import 'package:booklyapp/core/utiles/Styless.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.backgroundcolor,
    required this.Textcolor,
    required this.text,
    this.borderRadius,
  });

  final Color backgroundcolor;
  final Color Textcolor;
  final String text;
  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: backgroundcolor,
            shape: RoundedRectangleBorder(
                borderRadius: borderRadius ?? BorderRadius.circular(14))),
        onPressed: () {},
        child: Text(
          text,
          style: Styels.textStyel14
              .copyWith(color: Textcolor, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
