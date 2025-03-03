import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:v_school/core/extension/extensions.dart';
import 'package:v_school/core/theme/app_colors.dart';
import 'package:v_school/core/utils/app_constants.dart';
import 'package:v_school/core/widgets/animated_entrance.dart';
import 'package:v_school/core/widgets/custom_button.dart';
import 'package:v_school/features/authentication/cubit/login_cubit.dart';
import 'package:v_school/features/authentication/ui/widgets/email_text_form_field.dart';
import 'package:v_school/features/authentication/ui/widgets/forget_password_state_widget.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: AppConstants.screenPadding,
        child: AnimatedEntrance(
          child: ForgetPasswordStateWidget(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Forgot Password",
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          color: AppColors.primary,
                        ),
                  ),
                  hSpace(10),
                  Text(
                    "Enter the email that associated with your account.",
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: AppColors.secondary,
                        ),
                  ),
                  hSpace(24),
                  EmailTextFormField(),
                  hSpace(40),
                  CustomButton(
                    text: "Continue",
                    onTap: () {
                      context.read<LoginCubit>().forgetPassword();
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
