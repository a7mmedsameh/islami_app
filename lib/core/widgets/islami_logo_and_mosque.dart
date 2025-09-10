
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:islami_app/core/helpers/app_assets.dart';

class IslamiLogoAndMosque extends StatelessWidget {
  const IslamiLogoAndMosque({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 45.w),
          child: Image.asset(Assets.imagesMosque),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Center(
            child: SvgPicture.asset(Assets.svgsIslamiLogo),
          ),
        ),
      ],
    );
  }
}
