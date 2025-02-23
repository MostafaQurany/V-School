import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:v_school/core/route/app_router.dart';
import 'package:v_school/core/theme/app_theme.dart';

class VSchool extends StatelessWidget {
  const VSchool({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(402, 874),
      minTextAdapt: true,
      splitScreenMode: true,
      useInheritedMediaQuery: true,
      builder: (context, child) => MaterialApp.router(
        title: 'Flutter Demo',
        theme: AppTheme.lightTheme,
        routerConfig: AppRouter.goRouterGenerator(),
      ),
    );
  }
}
