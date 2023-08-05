import 'package:booklyapp/Feature/Home/Data/Presention/Views/HomeView.dart';
import 'package:go_router/go_router.dart';

import '../../Feature/Splash/Presention/Views/SplashView.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => SplashView(),
      ),
      GoRoute(
        path: '/homeview',
        builder: (context, state) => HomeView(),
      ),
    ],
  );
}
