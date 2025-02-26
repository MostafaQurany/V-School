import 'package:dio/dio.dart';
import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  DioFactory._();
  static Dio? dio;
  static final FlutterSecureStorage _secureStorage = FlutterSecureStorage();

  static Future<Dio> getDio() async {
    Duration timeOut = Duration(seconds: 30);

    if (dio == null) {
      dio = Dio();
      dio!
        ..options.connectTimeout = timeOut
        ..options.receiveTimeout = timeOut;
      addDioInterceptors();
      return dio!;
    } else {
      return dio!;
    }
  }

  // Add all Dio interceptors
  static void addDioInterceptors() {
    dio!.interceptors.add(PrettyDioLogger(
      request: true,
      responseBody: true,
      requestHeader: true,
    ));
    dio!.interceptors.add(AuthInterceptor(secureStorage: _secureStorage));
  }
}

class AuthInterceptor extends Interceptor {
  final FlutterSecureStorage secureStorage;

  AuthInterceptor({required this.secureStorage});

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    String? token = await secureStorage.read(key: 'auth_token');

    if (token != null) {
      options.headers['Authorization'] = 'Bearer $token';
    }

    return handler.next(options);
  }
}
