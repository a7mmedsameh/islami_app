import 'package:flutter/material.dart';
import 'package:islami_app/core/helpers/app_assets.dart';
import 'package:islami_app/core/helpers/spacing.dart';
import 'package:islami_app/core/theming/colors.dart';
import 'package:islami_app/core/theming/styles.dart';

class ItemMostRecently extends StatelessWidget {
  const ItemMostRecently({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        color: ColorsManager.mainGold,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Al-Anbiya', style: AppTextStyles.font24BlackBold),
                verticalSpace(8),
                Text('الانبياء', style: AppTextStyles.font24BlackBold),
                verticalSpace(8),
                Text('112 Verses', style: AppTextStyles.font14BlackBold),
              ],
            ),
            Image.asset(Assets.imagesMoshafRecentHomePage),
          ],
        ),
      ),
    );
  }
}
