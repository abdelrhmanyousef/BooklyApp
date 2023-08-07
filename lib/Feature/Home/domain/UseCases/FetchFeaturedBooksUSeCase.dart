import 'package:booklyapp/Feature/Home/domain/entites/Homeentite.dart';
import 'package:booklyapp/Feature/Home/domain/repo/Homerepo.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/utiles/Errors/Failur.dart';

class FetchFeaturedBooksUSeCase extends usecase<List<BookEntites>, noparam> {
  final Homerepo homerepo;

  FetchFeaturedBooksUSeCase(this.homerepo);

  @override
  Future<Either<failure, List<BookEntites>>> call([noparam? param]) async {
    return await homerepo.fetchFeatureBooks();
  }
}

abstract class usecase<type, param> {
  Future<Either<failure, type>> call([param param]);
}

class noparam {}
