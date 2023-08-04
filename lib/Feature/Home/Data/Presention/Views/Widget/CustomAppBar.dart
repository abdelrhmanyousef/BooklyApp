import 'package:booklyapp/core/utiles/assets.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, top: 30, bottom: 20),
      child: Row(children: [
        Image.asset(
          assetesdata.logo,
          height: 20,
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.search,
            size: 24,
          ),
        )
      ]),
    );
  }
}
