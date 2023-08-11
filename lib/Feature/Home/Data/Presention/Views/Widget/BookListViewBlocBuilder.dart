import 'package:booklyapp/Feature/Home/Data/Presention/manger/cubit/featureBoxCubit/feature_box_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'BookListView.dart';

class BookListViewBlocBuilder extends StatelessWidget {
  const BookListViewBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeatureBoxCubit, FeatureBoxState>(
        builder: (context, state) {
      if (state is FeatureBoxSucces) {
        return BookListView(
          books: state.books,
        );
      } else if (state is FeatureBoxFaliuer) {
        return Text(state.ErrorMess);
      } else {
        return CircularProgressIndicator();
      }
    });
  }
}
