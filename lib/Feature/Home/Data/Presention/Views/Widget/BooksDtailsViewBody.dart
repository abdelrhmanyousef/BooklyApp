import 'package:flutter/material.dart';

import 'CustomAppBarBookDetailsView.dart';

class BooksDetailsViewBody extends StatelessWidget {
  const BooksDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 10),
        child: Column(
          children: [
            CustomAppBarBookDetailsView(),
          ],
        ),
      ),
    );
  }
}
