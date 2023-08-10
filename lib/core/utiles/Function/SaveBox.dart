import 'package:hive/hive.dart';

import '../../../Feature/Home/domain/entites/Bookentite.dart';

void SaveDataBox(List<BookEntites> book, String boxname) {
  var box = Hive.box(boxname);
  box.add(book);
}
