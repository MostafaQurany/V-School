import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:v_school/core/networking/api_service.dart';
import 'package:v_school/core/networking/dio_factory.dart';
import 'package:v_school/features/authentication/repo/login_repo.dart';
import 'package:v_school/features/events/repo/events_repo.dart';

final getIt = GetIt.instance;

Future<void> setupDI() async {
  await _networking();
  await _login();
  await _events();
}

_networking() async {
  Dio dio = await DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(
    () => ApiService(dio),
  );
}

_login() async {
  getIt
    ..registerLazySingleton<LoginRepo>(
      () => LoginRepo(
        getIt(),
      ),
    );
}

_events() async {
  getIt
    ..registerLazySingleton(
      () => EventsRepo(getIt()),
    );
}
