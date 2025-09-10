
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:islami_app/core/helpers/app_assets.dart';

class CenterLogoSplash extends StatelessWidget {
  const CenterLogoSplash({
    super.key,
    required Animation<double> logoIntroScale,
    required Animation<double> logoPulseScale,
  }) : _logoIntroScale = logoIntroScale, _logoPulseScale = logoPulseScale;

  final Animation<double> _logoIntroScale;
  final Animation<double> _logoPulseScale;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ScaleTransition(
        scale: _logoIntroScale,
        child: ScaleTransition(
          scale: _logoPulseScale,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 100.w),
                child: Image.asset(Assets.imagesLogoSplashScreen),
              ),
              SvgPicture.asset(Assets.svgsIslamiLogo),
            ],
          ),
        ),
      ),
    );
  }
}