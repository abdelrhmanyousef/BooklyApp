import 'package:booklyapp/Feature/Home/domain/entites/Homeentite.dart';
import 'package:booklyapp/Feature/Home/domain/repo/Homerepo.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/utiles/Errors/Failur.dart';

class fetchNewistBookusecase extends usecase<List<BookEntites>, noparam> {
  final Homerepo homerepo;

  fetchNewistBookusecase(this.homerepo);

  @override
  Future<Either<failure, List<BookEntites>>> call([noparam? param]) async {
    return await homerepo.fetchFeatureBooks();
  }
}

abstract class usecase<type, param> {
  Future<Either<failure, type>> call([param param]);
}

class noparam {}
