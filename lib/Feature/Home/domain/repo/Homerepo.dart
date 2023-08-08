import 'package:booklyapp/Feature/Home/domain/entites/Bookentite.dart';
import 'package:booklyapp/core/utiles/Errors/Failur.dart';
import 'package:dartz/dartz.dart';

abstract class Homerepo {
  Future<Either<failure, List<BookEntites>>> fetchFeatureBooks();
  Future<Either<failure, List<BookEntites>>> fetchNewistBook();
}
