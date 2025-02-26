import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:go_router/go_router.dart';
import 'package:v_school/core/di/dependency_injection.dart';
import 'package:v_school/core/route/Routes.dart';
import 'package:v_school/features/authentication/cubit/login_cubit.dart';
import 'package:v_school/features/authentication/ui/login_screen.dart';

class AppRouter {
  static final _secureStorage = FlutterSecureStorage();

  static Future<String> _redirectLogic(
      BuildContext context, GoRouterState state) async {
    String? token = await _secureStorage.read(key: 'auth_token');

    if (token != null) {
      return Routes.homeScreen; // Redirect to home if token exists
    }
    return Routes.loginScreen; // Redirect to login if no token
  }

  static goRouterGenerator() => GoRouter(
        initialLocation: '/',
        routes: [
          GoRoute(
            path: '/',
            redirect: (context, state) async =>
                await _redirectLogic(context, state),
          ),
          GoRoute(
            path: Routes.loginScreen, //Routes.loginScreen,
            builder: (context, state) => BlocProvider.value(
              value: getIt<LoginCubit>(),
              child: LoginScreen(),
            ),
          ),
          GoRoute(
            path: Routes.homeScreen,
            builder: (context, state) => Scaffold(
              body: Center(
                child: Text("home screen"),
              ),
            ),
          ),
        ],
      );
}
