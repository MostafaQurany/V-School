import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:v_school/core/extension/extensions.dart';
import 'package:v_school/core/route/Routes.dart';
import 'package:v_school/core/utils/app_constants.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final FlutterSecureStorage _secureStorage = const FlutterSecureStorage();

  @override
  void initState() {
    super.initState();
    _checkUserToken();
  }

  Future<void> _checkUserToken() async {
    String? userToken = await _secureStorage.read(key: AppConstants.userToken);
    String? isUserSaveToken =
        await _secureStorage.read(key: AppConstants.saveUserKey);
    bool goToLoginScreen = userToken.isNullOrEmpty
        ? true
        : isUserSaveToken!.contains("true")
            ? false
            : true;
    _checkifthereIsToken(goToLoginScreen);
  }

  _checkifthereIsToken(bool goToLoginScreen) {
    if (!goToLoginScreen) {
      // User is authenticated, go to HomeScreen
      context.go(Routes.homeScreen);
    } else {
      // User is not authenticated, go to LoginScreen
      context.go(Routes.loginScreen);
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: CircularProgressIndicator()), // Loading state
    );
  }
}
