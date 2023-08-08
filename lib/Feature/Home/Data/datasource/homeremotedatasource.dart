import 'package:booklyapp/Feature/Home/d/Models/book_model/book_model.dart';
import 'package:booklyapp/core/utiles/Apiservice.dart';

import '../../domain/entites/Homeentite.dart';

abstract class HomeRemoteDataSource {
  Future<List<BookEntites>> fetchFeatureBooks();
  Future<List<BookEntites>> fetchNewistBook();
}

class HomeRemoteDataSourceImpl extends HomeRemoteDataSource {
  final ApiService apiService;

  HomeRemoteDataSourceImpl(this.apiService);

  @override
  Future<List<BookEntites>> fetchFeatureBooks() async {
    var data = await apiService.get(
        endPoint:
            "https://www.googleapis.com/books/v1/volumes?q=programing&=free-ebooks");
    List<BookEntites> Books = [];
    for (var bookMap in data['items']) {
      Books.add(BookModel.fromJson(bookMap));
    }
    return Books;
  }

  @override
  Future<List<BookEntites>> fetchNewistBook() {
    // TODO: implement fetchNewistBook
    throw UnimplementedError();
  }
}
