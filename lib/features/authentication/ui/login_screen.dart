import 'package:flutter/material.dart';
import 'package:v_school/core/utils/app_assets.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Image.asset(AppAssets.pencilsImageLoginScreen),
          ],
        ),
      ),
    );
  }
}
