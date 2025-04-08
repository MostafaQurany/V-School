import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:v_school/core/theme/app_colors.dart';

class EventDetailsDescription extends StatelessWidget {
  final String description;

  const EventDetailsDescription({super.key, required this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 8.h,
      children: [
        Text(
          "Description",
        ),
        Text(
          description,
          style: Theme.of(context)
              .textTheme
              .bodySmall!
              .copyWith(color: AppColors.secondary),
        ),
      ],
    );
  }
}
