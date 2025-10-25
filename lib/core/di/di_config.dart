
import 'package:dio/dio.dart' show Dio;
import 'package:get_it/get_it.dart';

import '../services/api_services/api_services.dart';

final GetIt getIt = GetIt.instance;

Future<void> diConfig() async {
  // Register Core Services
  getIt.registerLazySingleton<ApiService>(() => ApiService());

  // Register Dio as a singleton
  getIt.registerLazySingleton<Dio>(() => Dio());


  


}