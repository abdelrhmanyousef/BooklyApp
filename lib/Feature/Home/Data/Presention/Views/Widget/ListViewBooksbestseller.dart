import 'package:booklyapp/Feature/Home/Data/Presention/Views/Widget/BestSellerListView.dart';
import 'package:booklyapp/Feature/Home/Data/Presention/manger/cubit/NewestBox/newsed_boxs_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListViewBooksbestseller extends StatelessWidget {
  const ListViewBooksbestseller({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      physics: const NeverScrollableScrollPhysics(),
      padding: EdgeInsets.zero,
      itemBuilder: (context, index) {
        return Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
            ),
            child: BlocBuilder<NewsedBoxsCubit, NewsedBoxsState>(
              builder: (context, state) {
                if (state is NewsedBoxsSucces) {
                  return BookListViewItem(
                    books: state.books,
                    image: state.books[index].image ?? "",
                    Name: state.books[index].titel,
                    auth: state.books[index].authrname,
                    count: state.books[index].price,
                  );
                } else if (state is NewsedBoxsFaliuer) {
                  return Text(state.ErrorMess);
                } else {
                  return CircularProgressIndicator();
                }
              },
            ));
      },
    );
  }
}
