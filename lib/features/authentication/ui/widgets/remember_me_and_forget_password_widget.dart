import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:v_school/core/route/Routes.dart';
import 'package:v_school/core/theme/app_colors.dart';
import 'package:v_school/core/utils/app_constants.dart';
import 'package:v_school/features/authentication/cubit/login_cubit.dart';

class RememberMeAndForgetPasswordWidget extends StatefulWidget {
  const RememberMeAndForgetPasswordWidget({super.key});

  @override
  State<RememberMeAndForgetPasswordWidget> createState() =>
      _RememberMeAndForgetPasswordWidgetState();
}

class _RememberMeAndForgetPasswordWidgetState
    extends State<RememberMeAndForgetPasswordWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              LoginCubit.get(context).rememberMe =
                  !LoginCubit.get(context).rememberMe;
            });
          },
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              AnimatedSwitcher(
                duration: Duration(
                    milliseconds: AppConstants
                        .animationDuration250), // Animation duration
                transitionBuilder: (Widget child, Animation<double> animation) {
                  return ScaleTransition(
                    scale: animation,
                    child: child,
                  );
                },
                child: LoginCubit.get(context).rememberMe
                    ? Icon(
                        Icons.check_box_rounded,
                        key: const ValueKey(
                            'checked'), // Unique key for animation
                        color: AppColors.primary,
                      )
                    : Icon(
                        Icons.check_box_outline_blank_rounded,
                        key: const ValueKey(
                            'unchecked'), // Unique key for animation
                        color: AppColors.secondary,
                      ),
              ),
              SizedBox(width: 2.w), // Spacing between icon and text
              SizedBox(
                width: 150.w,
                child: Text(
                  ' Remember me',
                  style: Theme.of(context).textTheme.bodyMedium,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
        GestureDetector(
          onTap: () {
            context.push(Routes.forgotPassword);
          },
          child: Text(
            'Forgot Password?',
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: AppColors.primary,
                ),
          ),
        ),
      ],
    );
  }
}
