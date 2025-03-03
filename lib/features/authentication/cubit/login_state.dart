part of 'login_cubit.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _Initial;

  // login states
  const factory LoginState.loginLoading() = LoginLoading;
  const factory LoginState.loginSuccess() = LoginSuccess;
  const factory LoginState.loginError(String message) = LoginError;
  // forget password states
  const factory LoginState.forgotPasswordLoading() = ForgotPasswordLoading;
  const factory LoginState.forgotPasswordSuccess() = ForgotPasswordSuccess;
  const factory LoginState.forgotPasswordError(String message) =
      ForgotPasswordError;
}
