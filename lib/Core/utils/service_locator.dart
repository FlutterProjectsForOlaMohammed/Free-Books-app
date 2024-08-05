import 'package:dio/dio.dart';
import 'package:free_books/Core/services/api.dart';
import 'package:free_books/Features/home/data/Repos/home_repo_implementation.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton<Dio>(Dio());

  getIt.registerSingleton<Api>(Api(getIt<Dio>()));
  getIt.registerSingleton<HomeRepoImplementation>(
    HomeRepoImplementation(
      getIt<Api>(),
    ),
  );
}
