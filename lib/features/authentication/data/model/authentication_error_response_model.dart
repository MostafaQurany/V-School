import 'package:freezed_annotation/freezed_annotation.dart';

part 'authentication_error_response_model.g.dart';

@JsonSerializable()
class AuthenticationErrorResponseModel {
  List<String>? email;
  List<String>? password;
  List<String>? role;

  AuthenticationErrorResponseModel({
    this.email,
    this.password,
    this.role,
  });

  factory AuthenticationErrorResponseModel.fromJson(
          Map<String, dynamic> json) =>
      _$AuthenticationErrorResponseModelFromJson(json);

  Map<String, dynamic> toJson() =>
      _$AuthenticationErrorResponseModelToJson(this);
}
