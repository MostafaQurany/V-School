import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:go_router/go_router.dart';
import 'package:v_school/core/extension/extensions.dart';
import 'package:v_school/core/route/Routes.dart';
import 'package:v_school/core/utils/app_constants.dart';

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

    if (!userToken.isNullOrEmpty) {
      print("userToken : $userToken");
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
