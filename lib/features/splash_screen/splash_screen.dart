import 'package:flutter/material.dart';
import 'package:islami_app/core/widgets/custom_scaffold.dart';
import 'package:islami_app/core/routing/routes.dart';
import 'package:islami_app/core/helpers/extensions.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:islami_app/core/helpers/constants.dart';
import 'package:islami_app/features/splash_screen/widgets/stack_for_splash_screen.dart';
import 'package:islami_app/features/splash_screen/helpers/helper_splash.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late final SplashAnimations splashAnimations;

  Future<void> _decideNavigation() async {
    final box = Hive.box(kOnboardingBoxName);
    final bool hasSeen =
        box.get(kOnboardingSeenKey, defaultValue: false) as bool;

    final String targetRoute = hasSeen
        ? Routes.homeScreen
        : Routes.onBoardingScreen;

    if (!mounted) return;
    context.pushReplacementNamed(targetRoute);
  }

  @override
  void initState() {
    super.initState();
    splashAnimations = SplashAnimations(this);

    splashAnimations.mosqueCtrl.forward();
    splashAnimations.logoIntroCtrl.forward();

    Future.delayed(const Duration(milliseconds: 1200), () {
      if (mounted) splashAnimations.logoPulseCtrl.repeat(reverse: true);
    });

    Future.delayed(const Duration(milliseconds: 400), () {
      if (!mounted) return;
      splashAnimations.leftShapeCtrl.forward();
      splashAnimations.rightShapeCtrl.forward();
    });
    Future.delayed(const Duration(milliseconds: 900), () {
      if (!mounted) return;
      splashAnimations.glowCtrl.forward();
    });
    Future.delayed(const Duration(milliseconds: 1600), () {
      if (!mounted) return;
      splashAnimations.nameCtrl.forward();
    });

    Future.delayed(const Duration(seconds: 5), () {
      if (!mounted) return;
      splashAnimations.screenFadeCtrl.forward().then((_) {
        _decideNavigation();
      });
    });
  }

  @override
  void dispose() {
    splashAnimations.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenH = MediaQuery.of(context).size.height;

    return CustomScaffold(
      body: FadeTransition(
        opacity: splashAnimations.screenFade,
        child: StackForSplashScreen(
          mosqueOpacity: splashAnimations.mosqueOpacity,
          glowOpacity: splashAnimations.glowOpacity,
          glowOffset: splashAnimations.glowOffset,
          screenH: screenH,
          leftShapeOffset: splashAnimations.leftShapeOffset,
          rightShapeOffset: splashAnimations.rightShapeOffset,
          logoIntroScale: splashAnimations.logoIntroScale,
          logoPulseScale: splashAnimations.logoPulseScale,
          nameOffset: splashAnimations.nameOffset,
          nameCtrl: splashAnimations.nameCtrl,
        ),
      ),
    );
  }
}
