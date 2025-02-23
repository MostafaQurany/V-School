import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:v_school/core/extension/spacer.dart';
import 'package:v_school/core/theme/app_colors.dart';
import 'package:v_school/core/utils/app_assets.dart';
import 'package:v_school/core/utils/app_constants.dart';
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
        child: SingleChildScrollView(
          child: Padding(
            padding: AppConstants.screenPadding,
            child: Column(
              children: [
                Image.asset(
                  AppAssets.pencilsImageLoginScreen,
                  width: 120.w,
                  height: 120.h,
                ),
                Text(
                  "Welcome Back!",
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        color: AppColors.primary,
                      ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Let's sign in.",
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    Image.asset(
                      AppAssets.pencilImageLoginScreen,
                      width: 30.w,
                      height: 30.h,
                    ),
                  ],
                ),
                SelectedRoleWidget(),
                hSpace(24),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
