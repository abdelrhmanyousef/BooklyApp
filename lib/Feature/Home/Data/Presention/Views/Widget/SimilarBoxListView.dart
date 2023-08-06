import 'package:flutter/cupertino.dart';

import 'CustomListViewItem.dart';

class SimilarBoxListView extends StatelessWidget {
  const SimilarBoxListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .18,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: ListViewItems(),
          );
        },
      ),
    );
  }
}
