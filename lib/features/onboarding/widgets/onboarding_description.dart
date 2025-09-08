
import 'package:flutter/material.dart';
import 'package:islami_app/core/helpers/spacing.dart';
import 'package:islami_app/core/theming/styles.dart';

class OnboardingDescription extends StatelessWidget {
  final String textIdentification;
  final String textExplain;

  const OnboardingDescription({
    super.key, required this.textIdentification, required this.textExplain,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
        textIdentification,
          style: AppTextStyles.font24GoldBold,
        ),
        verticalSpace(30),
        Text(
          textExplain,
          style: AppTextStyles.font24GoldLighterMedium,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
