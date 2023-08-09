import 'package:booklyapp/Feature/Home/Data/datasource/homeLocalDataSource.dart';
import 'package:booklyapp/Feature/Home/Data/datasource/homeremotedatasource.dart';
import 'package:booklyapp/Feature/Home/domain/entites/Bookentite.dart';
import 'package:booklyapp/core/utiles/Errors/Failur.dart';
import 'package:dartz/dartz.dart';

abstract class Homerepo {
  Future<Either<failure, List<BookEntites>>> fetchFeatureBooks();
  Future<Either<failure, List<BookEntites>>> fetchNewistBook();
}

class HomeRepoImpe extends Homerepo {
  final HomeRemoteDataSource homeRemoteDataSource;
  final HomeLocalDataSource homeLocalDataSource;

  HomeRepoImpe(
      {required this.homeRemoteDataSource, required this.homeLocalDataSource});
  @override
  Future<Either<failure, List<BookEntites>>> fetchFeatureBooks() async {
    try {
      var bookslocal = homeLocalDataSource.fetchFeatureBooks();
      if (bookslocal.isNotEmpty) {
        return right(bookslocal);
      }
      var books = await homeRemoteDataSource.fetchFeatureBooks();
      return right(books);
    } catch (e) {
      return left(failure());
    }
  }

  @override
  Future<Either<failure, List<BookEntites>>> fetchNewistBook() {
    // TODO: implement fetchNewistBook
    throw UnimplementedError();
  }
}
