import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:v_school/core/networking/api_result.dart';
import 'package:v_school/core/networking/api_service.dart';
import 'package:v_school/features/authentication/data/model/login_request.dart';
import 'package:v_school/features/authentication/data/model/login_response.dart';

class LoginRepo {
  final ApiService apiService;
  final FlutterSecureStorage secureStorage = FlutterSecureStorage();

  LoginRepo(this.apiService);

  Future<ApiResult<LoginResponse>> login(LoginRequest request) async {
    try {
      final response = await apiService.login(request);

      // Save token securely
      await secureStorage.write(
          key: 'auth_token', value: response.userData!.accessToken);

      return ApiResult.success(data: response);
    } catch (e) {
      return ApiResult.error(message: e.toString());
    }
  }
}
