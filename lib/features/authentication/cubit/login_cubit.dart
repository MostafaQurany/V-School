import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:v_school/core/helpers/app_secure_storage.dart';
import 'package:v_school/core/utils/app_constants.dart';
import 'package:v_school/features/authentication/data/model/forget_password_request.dart';
import 'package:v_school/features/authentication/data/model/login_request.dart';
import 'package:v_school/features/authentication/repo/login_repo.dart';

part 'login_cubit.freezed.dart';
part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  static LoginCubit get(context) => BlocProvider.of(context);

  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  LoginRole loginRole = LoginRole.none;
  bool rememberMe = false;

  Future<void> login() async {
    if (formKey.currentState!.validate()) {
      emit(const LoginState.loginLoading());
      try {
        final request = LoginRequest(
          email: emailController.text.trim(),
          password: passwordController.text.trim(),
          role: loginRole,
        );
        final response = await _loginRepo.login(request);
        response.when(
          success: (data) {
            AppSecureStorage.saveData(
                key: AppConstants.userToken,
                value: data.userData?.accessToken ?? '');
            emit(LoginState.loginSuccess());
          },
          error: (message) {
            emit(LoginState.loginError(message));
          },
        );
      } catch (e) {
        emit(const LoginState.loginError("Something went wrong"));
      }
    } else {
      emit(const LoginState.loginError("Please fill all fields"));
    }
  }

  Future<void> forgetPassword() async {
    if (formKey.currentState!.validate()) {
      emit(const LoginState.forgotPasswordLoading());
      try {
        final request = ForgetPasswordRequest(
          email: emailController.text.trim(),
        );
        final response = await _loginRepo.forgotPassword(request);
        response.when(
          success: (data) => emit(LoginState.forgotPasswordSuccess()),
          error: (message) => emit(LoginState.forgotPasswordError(message)),
        );
      } catch (e) {
        emit(const LoginState.forgotPasswordError("Something went wrong"));
      }
    } else {
      emit(const LoginState.forgotPasswordError("Please fill the field"));
    }
  }
}
