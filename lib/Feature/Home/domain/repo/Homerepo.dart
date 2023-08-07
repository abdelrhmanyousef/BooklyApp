import 'package:booklyapp/Feature/Home/domain/entites/Homeentite.dart';

abstract class Homerepo {
  Future<List<BookEntites>> fetchFeatureBooks();
  Future<List<BookEntites>> fetchNewistBook();
}
