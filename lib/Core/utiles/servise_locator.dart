import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import '../../Feature/home/data/data_sources/home_local_data_source/home_local_data_source_impl.dart';
import '../../Feature/home/data/data_sources/home_remote_data_source/home_remote_data_source_impl.dart';
import '../../Feature/home/data/repos/home_repo_impl.dart';
import 'api_service.dart';

final getIt = GetIt.instance;

void setUpServiceLocator() {
  getIt.registerSingleton<ApiService>(
    ApiService(
      Dio(),
    ),
  );

  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
      homeLocalDataSource: HomeLocalDataSourceImpl(),
      homeRemoteDataSource: HomeRemoteDataSourceImpl(
        getIt.get<ApiService>(),
      ),
    ),
  );
}
