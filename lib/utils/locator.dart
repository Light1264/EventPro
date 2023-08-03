import 'package:eventpro/services/remote/auth/auth_interface.dart';
import 'package:eventpro/services/remote/auth/auth_service.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../services/local/local_cache.dart';
import '../services/local/local_cache_impl.dart';
import '../services/remote/auth/auth_repository.dart';

GetIt locator = GetIt.instance;
Future<void> setupLocator() async {
  final sharedPreferences = await SharedPreferences.getInstance();
  locator
    ..registerSingleton(sharedPreferences)
    ..registerLazySingleton<AuthRepository>(
        AuthRepositoryImpl.new)
    ..registerLazySingleton<AuthService>(AuthServiceImpl.new);
  // ..registerLazySingleton<LocalCache>(
  //   () => LocalCacheImpl(
  //     sharedPreferences: sharedPreferences,
  //   ),
  // );

  //locator.registerSingleton(sharedPreferences);
  locator.registerLazySingleton<LocalCache>(
    () => LocalCacheImpl(
      sharedPreferences: sharedPreferences,
    ),
  );
  // locator.registerLazySingleton<AuthRepository>(
  //   () => AuthRepositoryImpl(),
  // );
  // locator.registerLazySingleton<AuthService>(
  //   () => AuthServiceImpl(),
  // );
}
