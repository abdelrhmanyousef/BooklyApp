import 'package:bloc/bloc.dart';
import 'package:booklyapp/Feature/Home/domain/UseCases/FetchNewistBook.dart';
import 'package:meta/meta.dart';

import '../../../../../domain/entites/Bookentite.dart';

part 'newsed_boxs_state.dart';

class NewsedBoxsCubit extends Cubit<NewsedBoxsState> {
  NewsedBoxsCubit(this.NewestBoxusecase) : super(NewsedBoxsInitial());

  final fetchNewistBookusecase NewestBoxusecase;
  Future<void> FetchFeaturedBooks() async {
    emit(NewsedBoxsLoading());
    var result = await NewestBoxusecase.call();
    result.fold((l) {
      emit(NewsedBoxsFaliuer(l.message));
    }, (books) {
      emit(NewsedBoxsSucces(books));
    });
  }
}
