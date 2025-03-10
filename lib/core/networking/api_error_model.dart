import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:v_school/features/authentication/data/model/authentication_error_response_model.dart';

part 'api_error_model.g.dart';

@JsonSerializable()
class ApiErrorModel {
  String? message;
  Map<String, dynamic>? errors;

  AuthenticationErrorResponseModel? authenticationErrorResponse;

  ApiErrorModel({
    this.message,
    this.errors,
  });
  factory ApiErrorModel.fromJson(Map<String, dynamic> json) =>
      _$ApiErrorModelFromJson(json);

  Map<String, dynamic> toJson() => _$ApiErrorModelToJson(this);
}
