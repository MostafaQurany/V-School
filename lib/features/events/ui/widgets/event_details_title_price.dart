import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:v_school/core/theme/app_colors.dart';

class EventDetailsTitlePrice extends StatelessWidget {
  final String title;
  final double price;
  const EventDetailsTitlePrice(
      {super.key, required this.title, required this.price});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      spacing: 25.w,
      children: [
        Expanded(
          child: Text(
            title,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  color: AppColors.primary,
                ),
            overflow: TextOverflow.ellipsis,
          ),
        ),
        Text(
          "${price}EGP",
        ),
      ],
    );
  }
}
