import 'package:booklyapp/Feature/Home/Data/Presention/Views/Widget/CustomListViewItem.dart';
import 'package:flutter/material.dart';

import '../../../../../../constans.dart';
import '../../../../../../core/utiles/Styless.dart';
import 'BookRate.dart';
import 'BoxAction.dart';

class BooksDetailsection extends StatelessWidget {
  const BooksDetailsection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .25),
          child: ListViewItems(
            image: "",
          ),
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
        ),
        const SizedBox(
          height: 37,
        ),
        const BookAction(),
      ],
    );
  }
}
