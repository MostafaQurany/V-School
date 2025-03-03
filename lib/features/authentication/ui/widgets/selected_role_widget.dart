import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:v_school/core/utils/app_assets.dart';
import 'package:v_school/features/authentication/cubit/login_cubit.dart';
import 'package:v_school/features/authentication/data/model/login_request.dart';
import 'package:v_school/features/authentication/ui/widgets/select_role_card.dart';

class SelectedRoleWidget extends StatefulWidget {
  const SelectedRoleWidget({super.key});

  @override
  State<SelectedRoleWidget> createState() => _SelectedRoleWidgetState();
}

class _SelectedRoleWidgetState extends State<SelectedRoleWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 10.h,
      children: [
        Text(
          "Choose your role",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SelectRoleCard(
              roleName: "Teacher",
              image: AppAssets.teacherButtonIconLoginScreen,
              isSelected:
                  LoginCubit.get(context).loginRole == LoginRole.teacher,
              onTap: () {
                if (LoginCubit.get(context).loginRole == LoginRole.teacher) {
                  setState(() {
                    LoginCubit.get(context).loginRole = LoginRole.none;
                  });
                } else {
                  setState(() {
                    LoginCubit.get(context).loginRole = LoginRole.teacher;
                  });
                }
              },
            ),
            SelectRoleCard(
              roleName: "Parent",
              image: AppAssets.parentsButtonIconLoginScreen,
              isSelected: LoginCubit.get(context).loginRole == LoginRole.parent,
              onTap: () {
                if (LoginCubit.get(context).loginRole == LoginRole.parent) {
                  setState(() {
                    LoginCubit.get(context).loginRole = LoginRole.none;
                  });
                } else {
                  setState(() {
                    LoginCubit.get(context).loginRole = LoginRole.parent;
                  });
                }
              },
            ),
          ],
        )
      ],
    );
  }
}
