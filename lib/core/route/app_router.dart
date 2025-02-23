import 'package:go_router/go_router.dart';
import 'package:v_school/features/authentication/ui/login_screen.dart';

class AppRouter {
  static goRouterGenerator() => GoRouter(
        routes: [
          GoRoute(
            path: '/', //Routes.loginScreen,
            builder: (context, state) => const LoginScreen(),
          ),
        ],
      );
}
