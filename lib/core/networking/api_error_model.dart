import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:v_school/features/authentication/data/model/authentication_error_response_model.dart';

part 'api_error_model.g.dart';

@JsonSerializable()
class ApiErrorModel {
  String? message;
  ApiErrors? errors;

  AuthenticationErrorResponseModel? authenticationErrorResponse;

  ApiErrorModel({
    this.message,
    this.errors,
  });
  factory ApiErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorModelFromJson(json);

  Map<String, dynamic> toJson() => _$ApiErrorModelToJson(this);
}

@JsonSerializable()
class ApiErrors {
  List<String>? email;
  List<String>? password;
  List<String>? role;

  ApiErrors({
    this.email,
    this.password,
    this.role,
  });

  factory ApiErrors.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorsFromJson(json);

  Map<String, dynamic> toJson() => _$ApiErrorsToJson(this);
}
