import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:islami_app/core/helpers/constants.dart';
import 'package:islami_app/core/routing/app_router.dart';
import 'package:islami_app/islami_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox(kOnboardingBoxName);
  runApp(IslamiApp(appRouter: AppRouter()));
}
