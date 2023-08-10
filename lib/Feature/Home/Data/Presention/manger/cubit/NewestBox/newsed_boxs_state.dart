part of 'newsed_boxs_cubit.dart';

@immutable
sealed class NewsedBoxsState {}

final class NewsedBoxsInitial extends NewsedBoxsState {}

final class NewsedBoxsLoading extends NewsedBoxsState {}

final class NewsedBoxsSucces extends NewsedBoxsState {
  final List<BookEntites> books;

  NewsedBoxsSucces(this.books);
}

final class NewsedBoxsFaliuer extends NewsedBoxsState {
  final String ErrorMess;

  NewsedBoxsFaliuer(this.ErrorMess);
}
