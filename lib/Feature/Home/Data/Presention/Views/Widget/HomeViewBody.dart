import 'package:booklyapp/Feature/Home/Data/Presention/Views/Widget/BookListView.dart';
import 'package:booklyapp/core/utiles/Styless.dart';
import 'package:booklyapp/core/utiles/assets.dart';
import 'package:flutter/material.dart';

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
          BestSellerListViewItems()
        ],
      ),
    );
  }
}

class BestSellerListViewItems extends StatelessWidget {
  const BestSellerListViewItems({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.5 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(
                  image: AssetImage(assetesdata.Test),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
