import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:v_school/core/helpers/app_text_form_validation.dart';
import 'package:v_school/core/widgets/custom_text_form_field.dart';
import 'package:v_school/features/authentication/cubit/login_cubit.dart';

class PasswordTextFormField extends StatefulWidget {
  const PasswordTextFormField({super.key});

  @override
  State<PasswordTextFormField> createState() => _PasswordTextFormFieldState();
}

class _PasswordTextFormFieldState extends State<PasswordTextFormField> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      spacing: 8.h,
      children: [
        Text(
          "Password",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        CustomTextFormField(
          hintText: "Enter your Password",
          controller: LoginCubit.get(context).passwordController,
          isObscureText: obscureText,
          validator: AppTextFormValidation.validatePassword,
          suffixWidget: GestureDetector(
            onTap: () {
              setState(() {
                obscureText = !obscureText;
              });
            },
            child: Icon(
              obscureText
                  ? Icons.remove_red_eye_outlined
                  : Icons.remove_red_eye_rounded,
            ),
          ),
        )
      ],
    );
  }
}
