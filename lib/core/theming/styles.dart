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

  static TextStyle font24Goldregular = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeightHelper.regular,
    color: ColorsManager.mainGold,
  );

  static TextStyle font24GoldLighterMedium = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeightHelper.medium,
    color: ColorsManager.goldLighter,
  );

  static TextStyle font24BlackBold = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeightHelper.bold,
    color: ColorsManager.black,
  );

    static TextStyle font20WhiteBold = TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeightHelper.bold,
    color: Colors.white,
  );

  static TextStyle font16GoldBold = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.bold,
    color: ColorsManager.mainGold,
  );

  static TextStyle font16WhiteBold = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightHelper.bold,
    color: Colors.white,
  );

  static TextStyle font14BlackBold = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.bold,
    color: ColorsManager.black,
  );

    static TextStyle font14WhiteBold = TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeightHelper.bold,
    color: Colors.white,
  );
}
