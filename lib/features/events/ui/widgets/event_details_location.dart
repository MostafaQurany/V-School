import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:v_school/core/extension/extensions.dart';
import 'package:v_school/core/theme/app_colors.dart';

class EventDetailsLocation extends StatelessWidget {
  final String? country;
  final String? city;
  const EventDetailsLocation({this.country, this.city, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 8.h,
      children: [
        Text(
          "Location",
        ),
        if (!country.isNullOrEmpty)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Country',
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: AppColors.secondary,
                    ),
              ),
              Text(
                country!,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
        if (!city.isNullOrEmpty)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'City',
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: AppColors.secondary,
                    ),
              ),
              Text(
                city!,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
      ],
    );
  }
}
