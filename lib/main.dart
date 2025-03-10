import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:v_school/app/v_school.dart';
import 'package:v_school/core/helpers/app_bloc_observer.dart';

import 'core/di/dependency_injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // DI
  await setupDI();
  // bloc
  Bloc.observer = AppBlocObserver();
  runApp(const VSchool());
}
