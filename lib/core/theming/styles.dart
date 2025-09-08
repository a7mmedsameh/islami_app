import 'colors.dart';
import 'font_weight_hepler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextStyles {

  static TextStyle font24GoldBold = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeightHelper.extrabold,
    color: ColorsManager.mainGold,
  );

    static TextStyle font24GoldLighterMedium = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeightHelper.medium,
    color: ColorsManager.goldLighter,
  );

    static TextStyle font16GoldBold = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.bold,
    color: ColorsManager.mainGold,
  );
}
