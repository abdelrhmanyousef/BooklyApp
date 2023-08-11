import 'package:booklyapp/Feature/Home/Data/Presention/Views/Widget/CustomListViewItem.dart';
import 'package:booklyapp/Feature/Home/domain/entites/Bookentite.dart';
import 'package:flutter/material.dart';

class BookListView extends StatelessWidget {
  const BookListView({super.key, required this.books});
  final List<BookEntites> books;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
      child: ListView.builder(
        itemCount: books.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: ListViewItems(
              image: books[index].image ?? "",
            ),
          );
        },
      ),
    );
  }
}
