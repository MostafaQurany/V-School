import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:v_school/core/di/dependency_injection.dart';
import 'package:v_school/core/route/Routes.dart';
import 'package:v_school/features/announcement/cubit/announcement_cubit.dart';
import 'package:v_school/features/announcement/ui/announcement_list_screen.dart';
import 'package:v_school/features/attendance/ui/attendance_screen.dart';
import 'package:v_school/features/authentication/cubit/login_cubit.dart';
import 'package:v_school/features/authentication/ui/forgot_password.dart';
import 'package:v_school/features/authentication/ui/login_screen.dart';
import 'package:v_school/features/authentication/ui/splash_screen.dart';
import 'package:v_school/features/events/cubit/events_cubit.dart';
import 'package:v_school/features/events/data/models/get_event_response.dart';
import 'package:v_school/features/events/ui/eventFilter/event_filter_screen.dart';
import 'package:v_school/features/events/ui/event_details_screen.dart';
import 'package:v_school/features/events/ui/events_list_screen.dart';
import 'package:v_school/features/home/ui/home_screen.dart';

class AppRouter {
  GoRouter get router => _router;

  static final GoRouter _router = GoRouter(
    initialLocation: Routes.splashScreen,
    routes: [
      GoRoute(
        path: Routes.splashScreen,
        name: Routes.splashScreenName,
        builder: (context, state) => SplashScreen(),
      ),
      GoRoute(
        path: Routes.loginScreen,
        name: Routes.loginScreenName,
        builder: (context, state) => BlocProvider(
          create: (context) => LoginCubit(getIt()),
          child: LoginScreen(),
        ),
      ),
      GoRoute(
        path: Routes.forgotPassword,
        name: Routes.forgotPasswordName,
        builder: (context, state) => BlocProvider(
          create: (context) => LoginCubit(getIt()),
          child: ForgotPassword(),
        ),
      ),
      ShellRoute(
        builder: (context, state, child) {
          return MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => EventsCubit(getIt())..fetchEvents(),
                // Wraps all child screens
              ),
              BlocProvider(
                create: (context) =>
                    AnnouncementCubit(getIt())..getAnnouncements(),
              ),
            ],
            child: child,
          );
        },
        routes: [
          GoRoute(
            path: Routes.homeScreen,
            name: Routes.homeScreenName,
            builder: (context, state) => HomeScreen(),
            routes: [
              GoRoute(
                  path: Routes.eventsListScreen,
                  name: Routes.eventsListScreenName,
                  builder: (context, state) => EventsListScreen(),
                  routes: [
                    GoRoute(
                      path: Routes.eventDetailsScreen,
                      name: Routes.eventDetailsScreenName,
                      builder: (context, state) {
                        final event = GoRouterState.of(context).extra as Event;
                        return EventDetailsScreen(
                          event: event,
                        );
                      },
                    ),
                    GoRoute(
                      path: Routes.eventFilterScreen,
                      name: Routes.eventFilterScreenName,
                      builder: (context, state) {
                        return EventsFilterScreen();
                      },
                    ),
                  ]),
              GoRoute(
                path: "/${Routes.announcementsScreen}",
                name: Routes.announcementsScreen,
                builder: (context, state) => AnnouncementListScreen(),
              ),
              GoRoute(
                path: "/${Routes.attendanceScreen}",
                name: Routes.attendanceScreen,
                builder: (context, state) => AttendanceScreen(),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
