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
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: AppTheme.lightTheme,
        //routerConfig: AppRouter().router,
        routerDelegate: AppRouter().router.routerDelegate,
        routeInformationProvider: AppRouter().router.routeInformationProvider,
        routeInformationParser: AppRouter().router.routeInformationParser,
      ),
    );
  }
}
