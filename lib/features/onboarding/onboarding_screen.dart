import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:islami_app/core/helpers/constants.dart';
import 'package:islami_app/core/helpers/extensions.dart';
import 'package:islami_app/core/routing/routes.dart';
import 'package:islami_app/core/theming/colors.dart';
import 'package:islami_app/core/theming/styles.dart';
import 'package:islami_app/core/widgets/custom_scaffold.dart';
import 'package:islami_app/features/onboarding/widgets/page_views_model.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: IntroductionScreen(
            pages: [
              pageViewModelOne(),
              pageViewModelTwo(),
              pageViewModelThree(),
              pageViewModelFour(),
            ],
            onDone: () {
              final box = Hive.box(kOnboardingBoxName);
              box.put(kOnboardingSeenKey, true);
              context.pushReplacementNamed(Routes.homeScreen);
            },

            dotsDecorator: const DotsDecorator(
              size: Size(7, 7),
              color: ColorsManager.gray,
              activeSize: Size(18, 7),
              activeColor: ColorsManager.goldLighter,
              activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(25.0)),
              ),
            ),

            globalBackgroundColor: ColorsManager.black,
            done: Text("ابدأ", style: AppTextStyles.font16GoldBold),
            next: Text('التالي', style: AppTextStyles.font16GoldBold),
            showSkipButton: true,
            showBackButton: true,
            back: Text('الرجوع', style: AppTextStyles.font16GoldBold),
            skip: Text("تخطي", style: AppTextStyles.font16GoldBold),
          ),
        ),
      ),
    );
  }
}
