import 'package:flutter/material.dart';

import '../../../../../core/utiles/Styless.dart';
import 'CustomSearchTextFild.dart';
import 'SearchResultListView.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            CustomSearchTextFild(),
            SizedBox(
              height: 10,
            ),
            Text(
              "Search Result",
              style: Styels.textStyel18,
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(child: SearchResultListView())
          ],
        ));
  }
}
