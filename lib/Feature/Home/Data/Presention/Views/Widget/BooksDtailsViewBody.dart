import 'package:booklyapp/Feature/Home/Data/Presention/Views/Widget/CustomListViewItem.dart';
import 'package:booklyapp/core/utiles/Styless.dart';
import 'package:flutter/material.dart';

import '../../../../../../constans.dart';
import 'BookRate.dart';
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
            const SizedBox(
              height: 43,
            ),
            Text(
              "The Jungle Book",
              style: Styels.textStyel20.copyWith(
                fontFamily: CinzelDecorative,
              ),
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              "Rudyard Kipling",
              style: Styels.textStyel16.copyWith(
                  color: const Color.fromARGB(179, 221, 216, 216),
                  fontWeight: FontWeight.w600),
            ),
            const SizedBox(
              height: 18,
            ),
            const BookRate(
              mainAxisAlignment: MainAxisAlignment.center,
            )
          ],
        ),
      ),
    );
  }
}
