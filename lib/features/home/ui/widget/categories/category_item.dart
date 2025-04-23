import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:v_school/core/theme/app_colors.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final String icon;
  final bool isSvg;
  final Function()? onTap;

  const CategoryItem(
      {super.key,
      required this.title,
      required this.icon,
      this.isSvg = true,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 100.w,
        height: 100.h,
        decoration: BoxDecoration(
          color: AppColors.primaryWithOpacity30,
          border: Border.all(color: AppColors.primary),
          borderRadius: BorderRadius.circular(8.r),
        ),
        padding: EdgeInsets.symmetric(horizontal: 1.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            isSvg
                ? SizedBox(
                    width: 40.w,
                    height: 40.w,
                    child: SvgPicture.asset(
                      icon,
                      fit: BoxFit.cover,
                    ),
                  )
                : SizedBox(
                    width: 40.w,
                    height: 40.w,
                    child: Image.asset(
                      icon,
                      color: AppColors.primary,
                      fit: BoxFit.cover,
                    ),
                  ),
            SizedBox(height: 8.h),
            Text(
              title,
              style: Theme.of(context).textTheme.bodySmall,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
