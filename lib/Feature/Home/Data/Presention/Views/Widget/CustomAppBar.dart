import 'package:booklyapp/core/utiles/AppRouter.dart';
import 'package:booklyapp/core/utiles/assets.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
          onPressed: () {
            GoRouter.of(context).push(AppRouter.kSearchView);
          },
          icon: const Icon(
            Icons.search,
            size: 24,
          ),
        )
      ]),
    );
  }
}
