import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami_app/core/helpers/app_assets.dart';
import 'package:islami_app/core/theming/colors.dart';
import 'package:islami_app/core/theming/styles.dart';
import 'package:islami_app/features/surah_details/data/models/sura_details_response_model.dart';

class HeaderSurahDetailsItem extends StatelessWidget {
  const HeaderSurahDetailsItem({
    super.key,
    required this.detailsSura,
  });

  final DetailsSura detailsSura;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset(Assets.imagesMaskGroup, width: 95.w, height: 95.h),
        Text(
          detailsSura.name ?? '',
          style: AppTextStyles.font20WhiteBold2.copyWith(
            color: ColorsManager.mainGold,
            fontSize: 22.sp,
          ),
        ),
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
    );
  }
}
