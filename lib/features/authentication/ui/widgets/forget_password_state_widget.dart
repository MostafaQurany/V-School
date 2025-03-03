import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:v_school/features/authentication/cubit/login_cubit.dart';

class ForgetPasswordStateWidget extends StatelessWidget {
  final Widget child;
  const ForgetPasswordStateWidget({Key? key, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is ForgotPasswordError ||
          current is ForgotPasswordLoading ||
          current is ForgotPasswordSuccess,
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
          },
        );
      },
      child: child,
    );
  }
}
