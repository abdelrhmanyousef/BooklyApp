import 'package:booklyapp/Feature/Home/Data/Presention/manger/cubit/NewestBox/newsed_boxs_cubit.dart';
import 'package:booklyapp/Feature/Home/Data/Presention/manger/cubit/featureBoxCubit/feature_box_cubit.dart';
import 'package:booklyapp/Feature/Home/Data/datasource/homeLocalDataSource.dart';
import 'package:booklyapp/Feature/Home/Data/datasource/homeremotedatasource.dart';
import 'package:booklyapp/Feature/Home/domain/UseCases/FetchFeaturedBooksUSeCase.dart';
import 'package:booklyapp/Feature/Home/domain/UseCases/FetchNewistBook.dart';
import 'package:booklyapp/Feature/Home/domain/entites/Bookentite.dart';
import 'package:booklyapp/Feature/Home/domain/repo/Homerepo.dart';
import 'package:booklyapp/core/utiles/Apiservice.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:get_it/get_it.dart';

import 'constans.dart';
import 'core/utiles/AppRouter.dart';
import 'core/utiles/Widget/setupServiceLocated.dart';
import 'core/utiles/simpelBlocObserver.dart';

void main() async {
  await Hive.initFlutter();

  Hive.registerAdapter(BookEntitesAdapter());
  SetupServiceLocated();
  await Hive.openBox<BookEntites>(KBox);
  await Hive.openBox<BookEntites>(KNewsedBox);
  Bloc.observer = MyBlocObserver();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) {
            return FeatureBoxCubit(
                FetchFeaturedBooksUSeCase(get_it.get<HomeRepoImpe>()));
          },
        ),
        BlocProvider(
          create: (context) {
            return NewsedBoxsCubit(
                fetchNewistBookusecase(get_it.get<HomeRepoImpe>()));
          },
        )
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kScaffoldColor,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
        ),
      ),
    );
  }
}
