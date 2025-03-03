// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'authentication_error_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthenticationErrorResponseModel _$AuthenticationErrorResponseModelFromJson(
        Map<String, dynamic> json) =>
    AuthenticationErrorResponseModel(
      email:
          (json['email'] as List<dynamic>?)?.map((e) => e as String).toList(),
      password: (json['password'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      role: (json['role'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$AuthenticationErrorResponseModelToJson(
        AuthenticationErrorResponseModel instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'role': instance.role,
    };
