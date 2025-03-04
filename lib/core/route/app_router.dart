import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:v_school/core/di/dependency_injection.dart';
import 'package:v_school/core/route/Routes.dart';
import 'package:v_school/features/authentication/cubit/login_cubit.dart';
import 'package:v_school/features/authentication/ui/forgot_password.dart';
import 'package:v_school/features/home/ui/home_screen.dart';

class AppRouter {
  static GoRouter goRouterGenerator() => GoRouter(
        initialLocation: "/",
        routes: [
          GoRoute(
            path: "/",
            builder: (context, state) => BlocProvider(
              create: (context) => LoginCubit(getIt()),
              child: HomeScreen(),
            ),
          ),
          GoRoute(
            path: Routes.forgotPassword,
            builder: (context, state) => BlocProvider(
              create: (context) => LoginCubit(getIt()),
              child: ForgotPassword(),
            ),
          ),
          GoRoute(
            path: Routes.homeScreen,
            builder: (context, state) => HomeScreen(),
          ),
        ],
      );
}
