import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
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
      emit(const LoginState.loading());
      try {
        final request = LoginRequest(
          email: emailController.text.trim(),
          password: passwordController.text.trim(),
          role: loginRole,
        );
        final response = await _loginRepo.login(request);
        response.when(
          success: (data) => emit(LoginState.success()),
          error: (message) {
            emit(LoginState.error(message));
          },
        );
      } catch (e) {
        emit(const LoginState.error("Something went wrong"));
      }
    } else {
      emit(const LoginState.error("Please fill all fields"));
    }
  }
}
