import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:v_school/core/networking/api_constants.dart';
import 'package:v_school/features/authentication/data/model/login_request.dart';
import 'package:v_school/features/authentication/data/model/login_response.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  // login
  @POST(ApiConstants.login)
  Future<LoginResponse> login(
    @Body() LoginRequest request,
  );
}
