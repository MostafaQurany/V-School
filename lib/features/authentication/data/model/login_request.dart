import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_request.g.dart';

enum LoginRole { teacher, parent, student, none }

@JsonSerializable()
class LoginRequest {
  String email;
  String password;
  LoginRole role;

  LoginRequest({
    required this.email,
    required this.password,
    required this.role,
  });
  Map<String, dynamic> toJson() => _$LoginRequestToJson(this);
}
