import 'package:flutter/material.dart';
import 'package:islami_app/core/theming/styles.dart';

class CustomTitleText extends StatelessWidget {
  final String text;
  const CustomTitleText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Text(text, style: AppTextStyles.font16WhiteBold),
    );
  }
}
