import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:v_school/core/utils/app_constants.dart';

class DioFactory {
  DioFactory._();
  static Dio? _dio;
  static final FlutterSecureStorage _secureStorage = FlutterSecureStorage();

  static Future<Dio> getDio() async {
    if (_dio == null) {
      _dio = Dio();
      _dio!.options = BaseOptions(
        connectTimeout: Duration(seconds: 30),
        receiveTimeout: Duration(seconds: 30),
        contentType: "application/json",
        headers: {
          "Accept": "application/json",
        },
      );

      await _addDioInterceptors(); // Attach interceptors after initialization
    }
    return _dio!;
  }

  // Add all Dio interceptors
  static Future<void> _addDioInterceptors() async {
    _dio!.interceptors.clear(); // Ensure interceptors are not duplicated

    _dio!.interceptors.add(PrettyDioLogger(
      request: true,
      responseBody: true,
      requestHeader: true,
    ));

    _dio!.interceptors.add(AuthInterceptor(secureStorage: _secureStorage));
  }
}

class AuthInterceptor extends Interceptor {
  final FlutterSecureStorage secureStorage;

  AuthInterceptor({required this.secureStorage});

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    String? token = await secureStorage.read(key: AppConstants.userToken);

    print("Stored Token: $token"); // Debugging

    if (token != null && token.isNotEmpty) {
      options.headers['Authorization'] = 'Bearer $token';
    }
    return handler.next(options);
  }
}
