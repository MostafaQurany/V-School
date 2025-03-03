// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginRequest _$LoginRequestFromJson(Map<String, dynamic> json) => LoginRequest(
      email: json['email'] as String,
      password: json['password'] as String,
      role: $enumDecode(_$LoginRoleEnumMap, json['role']),
    );

Map<String, dynamic> _$LoginRequestToJson(LoginRequest instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'role': _$LoginRoleEnumMap[instance.role]!,
    };

const _$LoginRoleEnumMap = {
  LoginRole.teacher: 'teacher',
  LoginRole.parent: 'parent',
  LoginRole.student: 'student',
  LoginRole.none: 'none',
};
