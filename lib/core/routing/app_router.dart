import 'package:flutter/material.dart';
import 'package:islami_app/core/di/dependency_injection.dart';
import 'package:islami_app/core/routing/routes.dart';
import 'package:islami_app/features/home/logic/cubit/home_cubit.dart';
import 'package:islami_app/features/home/ui/home_screen.dart';
import 'package:islami_app/features/navigation/ui/navigation_screen.dart';
import 'package:islami_app/features/onboarding/ui/onboarding_screen.dart';
import 'package:islami_app/features/splash_screen/ui/splash_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashScreen:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case Routes.navigationScreen:
        return MaterialPageRoute(
          builder: (_) => const NavigationScreen(),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(
          builder: (_) => const HomeScreen(),
        );
      default:
        return null;
    }
  }
}
