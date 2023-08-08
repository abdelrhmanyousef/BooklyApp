import 'package:hive/hive.dart';
part 'Bookentite.g.dart';

@HiveType(typeId: 0)
class BookEntites {
  @HiveField(0)
  final String? image;
  @HiveField(1)
  final String bookid;
  @HiveField(2)
  final String? titel;
  @HiveField(3)
  final String? authrname;
  @HiveField(4)
  final num? price;
  @HiveField(5)
  final num? rate;

  BookEntites(
      {required this.image,
      required this.titel,
      required this.authrname,
      required this.price,
      required this.rate,
      required this.bookid});
}
