import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:v_school/core/networking/api_constants.dart';
import 'package:v_school/features/authentication/data/model/forget_password_request.dart';
import 'package:v_school/features/authentication/data/model/forget_password_response.dart';
import 'package:v_school/features/authentication/data/model/login_request.dart';
import 'package:v_school/features/authentication/data/model/login_response.dart';
import 'package:v_school/features/events/data/models/get_event_response.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  // login
  @POST(ApiConstants.login)
  Future<LoginResponse> login(
    @Body() LoginRequest request,
  );
  // forget password
  @POST(ApiConstants.forgetPassword)
  Future<ForgetPasswordResponse> forgetPassword(
    @Body() ForgetPasswordRequest request,
  );

  // Events get , attend ,attended
  @GET(ApiConstants.getEvents)
  Future<GetEventResponse> getEvents();
}
