import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:v_school/core/networking/api_constants.dart';
import 'package:v_school/features/announcement/data/get_announcements_response.dart';
import 'package:v_school/features/authentication/data/model/forget_password_request.dart';
import 'package:v_school/features/authentication/data/model/forget_password_response.dart';
import 'package:v_school/features/authentication/data/model/login_request.dart';
import 'package:v_school/features/authentication/data/model/login_response.dart';
import 'package:v_school/features/events/data/models/event_filter_request.dart';
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

  // Events get
  @GET(ApiConstants.getEvents)
  Future<GetEventResponse> getEvents();

  // Events Filtered
  @GET(ApiConstants.getEvents)
  Future<GetEventResponse> getFilteredEvents({
    @Queries() EventFilterRequest? filter,
  });

  // * get Announcements
  @GET(ApiConstants.getAnnouncements)
  Future<GetAnnouncementsResponse> getAnnouncements();
}
