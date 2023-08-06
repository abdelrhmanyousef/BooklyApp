import 'package:flutter/material.dart';

import 'BooksDetailsection.dart';
import 'CustomAppBarBookDetailsView.dart';
import 'SimilarBoxSction.dart';

class BooksDetailsViewBody extends StatelessWidget {
  const BooksDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.only(left: 30, right: 30, top: 10),
              child: Column(
                children: [
                  CustomAppBarBookDetailsView(),
                  BooksDetailsection(),
                  Expanded(
                    child: SizedBox(
                      height: 49,
                    ),
                  ),
                  SimilarBoxSction()
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
