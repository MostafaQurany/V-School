// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_error_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiErrorModel _$ApiErrorModelFromJson(Map<String, dynamic> json) =>
    ApiErrorModel(
      message: json['message'] as String?,
      errors: json['errors'] == null
          ? null
          : ApiErrors.fromJson(json['errors'] as Map<String, dynamic>),
    )..authenticationErrorResponse = json['authenticationErrorResponse'] == null
        ? null
        : AuthenticationErrorResponseModel.fromJson(
            json['authenticationErrorResponse'] as Map<String, dynamic>);

Map<String, dynamic> _$ApiErrorModelToJson(ApiErrorModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'errors': instance.errors,
      'authenticationErrorResponse': instance.authenticationErrorResponse,
    };

ApiErrors _$ApiErrorsFromJson(Map<String, dynamic> json) => ApiErrors(
      email:
          (json['email'] as List<dynamic>?)?.map((e) => e as String).toList(),
      password: (json['password'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      role: (json['role'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$ApiErrorsToJson(ApiErrors instance) => <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'role': instance.role,
    };
