import 'package:freezed_annotation/freezed_annotation.dart';

part 'forget_password_request.g.dart';

@JsonSerializable()
class ForgetPasswordRequest {
  String email;

  ForgetPasswordRequest({
    required this.email,
  });
  Map<String, dynamic> toJson() => _$ForgetPasswordRequestToJson(this);
}
