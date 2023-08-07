import 'package:booklyapp/Feature/Home/Data/Presention/Views/Widget/BestSellerListView.dart';
import 'package:flutter/material.dart';

class ListViewBooksbestseller extends StatelessWidget {
  const ListViewBooksbestseller({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsets.symmetric(
            vertical: 10,
          ),
          child: BookListViewItem(),
        );
      },
    );
  }
}
