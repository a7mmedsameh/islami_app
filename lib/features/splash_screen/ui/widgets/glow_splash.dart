
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami_app/core/helpers/app_assets.dart';

class GlowSplash extends StatelessWidget {
  const GlowSplash({
    super.key,
    required Animation<double> glowOpacity,
    required Animation<Offset> glowOffset,
  }) : _glowOpacity = glowOpacity, _glowOffset = glowOffset;

  final Animation<double> _glowOpacity;
  final Animation<Offset> _glowOffset;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      right: -80.w,
      child: FadeTransition(
        opacity: _glowOpacity,
        child: SlideTransition(
          position: _glowOffset,
          child: Image.asset(
            Assets.imagesGlow,
            width: 250.w,
            height: 250.h,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}