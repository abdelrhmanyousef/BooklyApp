import '../../domain/entites/Bookentite.dart';

abstract class HomeLocalDataSource {
  List<BookEntites> fetchFeatureBooks();
  List<BookEntites> fetchNewistBook();
}

class HomeLocalDataSourceImpl extends HomeLocalDataSource {
  @override
  List<BookEntites> fetchFeatureBooks() {
    // TODO: implement fetchFeatureBooks
    throw UnimplementedError();
  }

  @override
  List<BookEntites> fetchNewistBook() {
    // TODO: implement fetchNewistBook
    throw UnimplementedError();
  }
}
