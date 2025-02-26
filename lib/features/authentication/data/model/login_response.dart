import 'package:json_annotation/json_annotation.dart';

part 'login_response.g.dart';

@JsonSerializable()
class LoginResponse {
  @JsonKey(name: "data")
  final UserData? userData;
  final bool? error;
  final String? message;

  LoginResponse({
    this.userData,
    this.error,
    this.message,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LoginResponseToJson(this);
}

@JsonSerializable()
class UserData {
  final int? id;
  final String? name;
  final String? phone;
  final String? email;
  @JsonKey(name: "email_verified_at")
  final dynamic emailVerifiedAt;
  final String? role;
  @JsonKey(name: "access_token")
  final String? accessToken;

  UserData({
    this.id,
    this.name,
    this.phone,
    this.email,
    this.emailVerifiedAt,
    this.role,
    this.accessToken,
  });

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);

  Map<String, dynamic> toJson() => _$UserDataToJson(this);
}
