import 'package:booklyapp/Feature/Home/domain/entites/Bookentite.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive/hive.dart';

import 'constans.dart';
import 'core/utiles/AppRouter.dart';

void main() async {
  runApp(const BooklyApp());
  Hive.registerAdapter(BookEntitesAdapter());
  await Hive.openBox(KBox);
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kScaffoldColor,
        textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
      ),
    );
  }
}
