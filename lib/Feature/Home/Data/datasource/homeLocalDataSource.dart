import 'package:booklyapp/constans.dart';
import 'package:hive_flutter/adapters.dart';

import '../../domain/entites/Bookentite.dart';

abstract class HomeLocalDataSource {
  List<BookEntites> fetchFeatureBooks();
  List<BookEntites> fetchNewistBook();
}

class HomeLocalDataSourceImpl extends HomeLocalDataSource {
  @override
  List<BookEntites> fetchFeatureBooks() {
    var box = Hive.box<BookEntites>(KBox);
    return box.values.toList();
  }

  @override
  List<BookEntites> fetchNewistBook() {
    // TODO: implement fetchNewistBook
    throw UnimplementedError();
  }
}
