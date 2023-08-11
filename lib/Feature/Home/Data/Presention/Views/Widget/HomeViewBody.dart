import 'package:booklyapp/Feature/Home/Data/Presention/Views/Widget/BookListView.dart';
import 'package:booklyapp/core/utiles/Styless.dart';
import 'package:flutter/material.dart';

import 'BookListViewBlocBuilder.dart';
import 'CustomAppBar.dart';
import 'ListViewBooksbestseller.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: CustomAppBar(),
            ),
            BookListViewBlocBuilder(),
            SizedBox(
              height: 45,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                "Best Seller",
                style: Styels.textStyel18,
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        )),
        SliverFillRemaining(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: ListViewBooksbestseller(),
          ),
        )
      ],
    );
  }
}
