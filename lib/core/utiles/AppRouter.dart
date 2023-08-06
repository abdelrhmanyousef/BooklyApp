import 'package:booklyapp/Feature/Home/Data/Presention/Views/HomeView.dart';
import 'package:go_router/go_router.dart';

import '../../Feature/Home/Data/Presention/Views/BooksDetailsView.dart';
import '../../Feature/Search/Presention/Views/SearhView.dart';
import '../../Feature/Splash/Presention/Views/SplashView.dart';

abstract class AppRouter {
  static const kbookdetails = '/bookdetails';
  static const kHomeView = '/homeview';
  static const kSplashView = '/';
  static const kSearchView = '/searchView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: kSplashView,
        builder: (context, state) => SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => HomeView(),
      ),
      GoRoute(
        path: kbookdetails,
        builder: (context, state) => BooksDetails(),
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => SearchView(),
      ),
    ],
  );
}
