import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:v_school/core/networking/api_service.dart';
import 'package:v_school/core/networking/dio_factory.dart';
import 'package:v_school/features/authentication/cubit/login_cubit.dart';
import 'package:v_school/features/authentication/repo/login_repo.dart';

final getIt = GetIt.instance;

Future<void> setupDI() async {
  await _networking();
  await _login();
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
    )
    ..registerSingleton<LoginCubit>(
      LoginCubit(getIt()),
    );
}
