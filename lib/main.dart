import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Feature/Splash/Presention/Views/SplashView.dart';
import 'constans.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kScaffoldColor,
      ),
      home: const SplashView(),
    );
  }
}
