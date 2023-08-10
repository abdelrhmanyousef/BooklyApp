import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../../Feature/Home/Data/datasource/homeLocalDataSource.dart';
import '../../../Feature/Home/Data/datasource/homeremotedatasource.dart';
import '../../../Feature/Home/domain/repo/Homerepo.dart';
import '../../../main.dart';
import '../Apiservice.dart';

final get_it = GetIt.instance;

void SetupServiceLocated() {
  get_it.registerSingleton(
    ApiService(
      Dio(),
    ),
  );
  get_it.registerSingleton<HomeRepoImpe>(
    HomeRepoImpe(
        homeRemoteDataSource: HomeRemoteDataSourceImpl(
          get_it.get<ApiService>(),
        ),
        homeLocalDataSource: HomeLocalDataSourceImpl()),
  );
}
