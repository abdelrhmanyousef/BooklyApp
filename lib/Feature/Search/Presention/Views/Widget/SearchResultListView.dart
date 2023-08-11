import 'package:flutter/cupertino.dart';

import '../../../../Home/Data/Presention/Views/Widget/BestSellerListView.dart';

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(
            vertical: 10,
          ),
          // child: BookListViewItem(),
        );
      },
    );
  }
}
