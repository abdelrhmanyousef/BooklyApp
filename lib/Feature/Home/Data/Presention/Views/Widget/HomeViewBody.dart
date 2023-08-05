import 'package:booklyapp/Feature/Home/Data/Presention/Views/Widget/BookListView.dart';
import 'package:booklyapp/core/utiles/Styless.dart';
import 'package:flutter/material.dart';

import 'BestSellerListView.dart';
import 'CustomAppBar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomAppBar(),
          BookListView(),
          SizedBox(
            height: 45,
          ),
          Text(
            "Best Seller",
            style: Styels.textStyel18,
          ),
          SizedBox(
            height: 20,
          ),
          BestSellerListViewItems()
        ],
      ),
    );
  }
}
