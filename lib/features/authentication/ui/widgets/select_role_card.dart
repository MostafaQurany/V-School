import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:v_school/core/theme/app_colors.dart';

class SelectRoleCard extends StatelessWidget {
  final String roleName;
  final bool isSelected;
  final String image;
  final void Function()? onTap;

  const SelectRoleCard({
    super.key,
    required this.roleName,
    required this.isSelected,
    required this.image,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250), // Animation duration
        curve: Curves.easeInOut, // Animation curve
        width: isSelected ? 170.w : 165.w,
        height: isSelected ? 120.h : 115.h,
        decoration: BoxDecoration(
          color: AppColors.primaryWithOpacity, // Animated color
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(
            color: isSelected ? AppColors.primary : AppColors.secondary,
            width: isSelected ? 2 : 1, // Animated border width
          ),
        ),
        padding: EdgeInsets.all(10.h),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AnimatedContainer(
                  duration:
                      const Duration(milliseconds: 300), // Animation duration
                  curve: Curves.easeInOut, // Animation curve
                  height: 20.h,
                  width: 20.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.r),
                    border: Border.all(
                      color:
                          isSelected ? AppColors.primary : AppColors.secondary,
                      width: isSelected ? 2 : 1, // Animated border width
                    ),
                  ),
                  child: isSelected
                      ? Center(
                          child: Icon(
                            Icons.circle,
                            color: AppColors.primary,
                            size: 12.sp,
                          ),
                        )
                      : null,
                ),
                SizedBox(width: 5.w), // Spacing between icon and text
                AnimatedDefaultTextStyle(
                  duration:
                      const Duration(milliseconds: 300), // Animation duration
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: isSelected
                            ? AppColors.primary
                            : AppColors.secondary,
                        fontSize:
                            isSelected ? 18.sp : 16.sp, // Animated font size
                        fontWeight:
                            isSelected ? FontWeight.bold : FontWeight.normal,
                      ),
                  child: Text(roleName),
                ),
              ],
            ),
            SizedBox(height: 10.h), // Spacing between text and image
            Transform.scale(
              scale: isSelected ? 1.2 : 1.0, // Animated scale
              child: AnimatedOpacity(
                duration:
                    const Duration(milliseconds: 300), // Animation duration
                opacity: isSelected ? 1 : 0.8, // Animated opacity
                child: Image.asset(
                  image,
                  height: 50.h,
                  width: 50.w,
                  color: isSelected ? AppColors.primary : AppColors.secondary,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
