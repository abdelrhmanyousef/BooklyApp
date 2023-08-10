part of 'feature_box_cubit.dart';

@immutable
sealed class FeatureBoxState {}

final class FeatureBoxInitial extends FeatureBoxState {}

final class FeatureBoxLoading extends FeatureBoxState {}

final class FeatureBoxSucces extends FeatureBoxState {
  final List<BookEntites> books;

  FeatureBoxSucces(this.books);
}

final class FeatureBoxFaliuer extends FeatureBoxState {
  final String ErrorMess;

  FeatureBoxFaliuer(this.ErrorMess);
}
