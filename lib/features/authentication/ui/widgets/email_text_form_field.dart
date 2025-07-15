import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:v_school/core/helpers/app_text_form_validation.dart';
import 'package:v_school/core/widgets/custom_text_form_field.dart';
import 'package:v_school/features/authentication/cubit/login_cubit.dart';

class EmailTextFormField extends StatelessWidget {
  const EmailTextFormField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      spacing: 8.h,
      children: [
        Text(
          "Email",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        CustomTextFormField(
          hintText: "Enter your email",
          keyboardType: TextInputType.emailAddress,
          controller: LoginCubit.get(context).emailController,
          validator: AppTextFormValidation.validateEmail,
          suffixWidget: Icon(Icons.email_outlined),
        )
      ],
    );
  }
}
