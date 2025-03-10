import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:v_school/core/route/Routes.dart';
import 'package:v_school/features/authentication/cubit/login_cubit.dart';

class LoginScreenStateWidget extends StatelessWidget {
  final Widget child;
  const LoginScreenStateWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is LoginError ||
          current is LoginLoading ||
          current is LoginSuccess,
      listener: (context, state) {
        state.whenOrNull(
          loginError: (message) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(message),
              ),
            );
          },
          loginLoading: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text("Loading"),
              ),
            );
          },
          loginSuccess: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text("Success"),
              ),
            );
            context.go(Routes.homeScreen);
          },
        );
      },
      child: child,
    );
  }
}
