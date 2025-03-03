import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:v_school/core/utils/app_constants.dart';
import 'package:v_school/core/widgets/animated_entrance.dart';
import 'package:v_school/core/widgets/custom_button.dart';
import 'package:v_school/features/authentication/cubit/login_cubit.dart';
import 'package:v_school/features/authentication/ui/widgets/email_text_form_field.dart';
import 'package:v_school/features/authentication/ui/widgets/login_screen_state_widget.dart';
import 'package:v_school/features/authentication/ui/widgets/logo_head_title_login_screen.dart';
import 'package:v_school/features/authentication/ui/widgets/password_text_form_field.dart';
import 'package:v_school/features/authentication/ui/widgets/remember_me_and_forget_password_widget.dart';
import 'package:v_school/features/authentication/ui/widgets/selected_role_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: AppConstants.screenPadding,
          child: AnimatedEntrance(
            child: LoginScreenStateWidget(
              child: SingleChildScrollView(
                child: Form(
                  key: LoginCubit.get(context).formKey,
                  child: Column(
                    spacing: 24.h,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      LogoHeadTitleLoginScreen(),
                      SelectedRoleWidget(),
                      EmailTextFormField(),
                      PasswordTextFormField(),
                      RememberMeAndForgetPasswordWidget(),
                      CustomButton(
                        text: "Sign in",
                        onTap: () {
                          context.read<LoginCubit>().login();
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
