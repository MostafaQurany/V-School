import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:v_school/core/utils/app_assets.dart';
import 'package:v_school/features/authentication/ui/widgets/select_role_card.dart';

class SelectedRoleWidget extends StatefulWidget {
  const SelectedRoleWidget({super.key});

  @override
  State<SelectedRoleWidget> createState() => _SelectedRoleWidgetState();
}

class _SelectedRoleWidgetState extends State<SelectedRoleWidget> {
  String roleSelected = '';
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
              isSelected: roleSelected.contains("Teacher"),
              onTap: () {
                if (roleSelected == "Teacher") {
                  setState(() {
                    roleSelected = "";
                  });
                } else {
                  setState(() {
                    roleSelected = "Teacher";
                  });
                }
              },
            ),
            SelectRoleCard(
              roleName: "Parent",
              image: AppAssets.parentsButtonIconLoginScreen,
              isSelected: roleSelected.contains("Parent"),
              onTap: () {
                if (roleSelected == "Parent") {
                  setState(() {
                    roleSelected = "";
                  });
                } else {
                  setState(() {
                    roleSelected = "Parent";
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
