import 'package:booklyapp/Feature/Home/domain/repo/Homerepo.dart';

import '../entites/Homeentite.dart';

class FetchFeaturedBooksUSeCase {
  final Homerepo homerepo;

  FetchFeaturedBooksUSeCase(this.homerepo);
  Future<List<BookEntites>> fetchFeatureBooks() {
    return homerepo.fetchFeatureBooks();
  }
}
