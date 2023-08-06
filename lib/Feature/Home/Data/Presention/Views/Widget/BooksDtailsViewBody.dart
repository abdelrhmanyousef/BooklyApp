import 'package:booklyapp/Feature/Home/Data/Presention/Views/Widget/CustomListViewItem.dart';
import 'package:flutter/material.dart';

import 'CustomAppBarBookDetailsView.dart';

class BooksDetailsViewBody extends StatelessWidget {
  const BooksDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 10),
        child: Column(
          children: [
            CustomAppBarBookDetailsView(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: width * .25),
              child: ListViewItems(),
            ),
          ],
        ),
      ),
    );
  }
}
