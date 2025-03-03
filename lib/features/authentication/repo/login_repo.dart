import 'package:v_school/core/networking/api_result.dart';
import 'package:v_school/core/networking/api_service.dart';
import 'package:v_school/features/authentication/data/model/forget_password_request.dart';
import 'package:v_school/features/authentication/data/model/forget_password_response.dart';
import 'package:v_school/features/authentication/data/model/login_request.dart';
import 'package:v_school/features/authentication/data/model/login_response.dart';

class LoginRepo {
  final ApiService apiService;

  LoginRepo(this.apiService);

  Future<ApiResult<LoginResponse>> login(
    LoginRequest request,
  ) async {
    try {
      final response = await apiService.login(request);

      return ApiResult.success(data: response);
    } catch (e) {
      return ApiResult.error(message: e.toString());
    }
  }

  Future<ApiResult<ForgetPasswordResponse>> forgotPassword(
      ForgetPasswordRequest request) async {
    try {
      final response = await apiService.forgetPassword(request);

      return ApiResult.success(data: response);
    } catch (e) {
      return ApiResult.error(message: e.toString());
    }
  }
}
