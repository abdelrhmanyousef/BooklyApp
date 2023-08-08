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
        endPoint: "volumes?Filtering=free-ebooks&q=programing");
    return GetBooksList(data);
  }

  @override
  Future<List<BookEntites>> fetchNewistBook() async {
    var data = await apiService.get(
        endPoint: "volumes?Filtering=free-ebooks&Sorting=newest&q=programing");
    return GetBooksList(data);
  }

  List<BookEntites> GetBooksList(Map<String, dynamic> data) {
    List<BookEntites> Books = [];
    for (var bookMap in data['items']) {
      Books.add(BookModel.fromJson(bookMap));
    }
    return Books;
  }
}
