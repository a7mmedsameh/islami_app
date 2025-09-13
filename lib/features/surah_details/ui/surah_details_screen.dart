import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami_app/core/helpers/app_assets.dart';
import 'package:islami_app/core/helpers/spacing.dart';
import 'package:islami_app/core/theming/colors.dart';
import 'package:islami_app/core/theming/styles.dart';
import 'package:islami_app/core/widgets/custom_scaffold.dart';

class SurahDetailsScreen extends StatelessWidget {
  const SurahDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: ColorsManager.mainGold),
        backgroundColor: Colors.transparent,
        title: Text("الفاتحة", style: AppTextStyles.font20GoldBold),
        centerTitle: true,
        toolbarHeight: 40,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(Assets.imagesMaskGroup, width: 95.w, height: 95.h),
                Text('الفاتحة', style: AppTextStyles.font24GoldBold),
                Transform(
                  alignment: Alignment.center,
                  transform: Matrix4.rotationY(math.pi),
                  child: Image.asset(
                    Assets.imagesMaskGroup,
                    width: 95.w,
                    height: 95.h,
                  ),
                ),
              ],
            ),
            verticalSpace(16),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all(color: ColorsManager.mainGold, width: 1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Center(
                child: Text(
                  "[1] بِسْمِ اللَّهِ الرَّحْمَٰنِ الرَّحِيمِ",
                  style: TextStyle(
                    color: ColorsManager.mainGold,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
