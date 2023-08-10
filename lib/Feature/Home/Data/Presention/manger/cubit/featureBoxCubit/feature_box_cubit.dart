import 'package:bloc/bloc.dart';
import 'package:booklyapp/Feature/Home/domain/UseCases/FetchFeaturedBooksUSeCase.dart';
import 'package:booklyapp/Feature/Home/domain/entites/Bookentite.dart';
import 'package:meta/meta.dart';

part 'feature_box_state.dart';

class FeatureBoxCubit extends Cubit<FeatureBoxState> {
  FeatureBoxCubit(this.featuredBooksUSeCase) : super(FeatureBoxInitial());
  final FetchFeaturedBooksUSeCase featuredBooksUSeCase;
  Future<void> FetchFeaturedBooks() async {
    emit(FeatureBoxLoading());
    var result = await featuredBooksUSeCase.call();
    result.fold((l) {
      emit(FeatureBoxFaliuer(l.message));
    }, (books) {
      emit(FeatureBoxSucces(books));
    });
  }
}
