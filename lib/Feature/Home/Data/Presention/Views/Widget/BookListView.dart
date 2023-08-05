import 'package:booklyapp/Feature/Home/Data/Presention/Views/Widget/CustomListViewItem.dart';
import 'package:flutter/material.dart';

class BookListView extends StatelessWidget {
  const BookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
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
