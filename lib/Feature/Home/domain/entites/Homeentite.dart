class BookEntites {
  final String? image;
  final String bookid;

  final String? titel;
  final String? authrname;
  final num? price;
  final num? rate;

  BookEntites(
      {required this.image,
      required this.titel,
      required this.authrname,
      required this.price,
      required this.rate,
      required this.bookid});
}
