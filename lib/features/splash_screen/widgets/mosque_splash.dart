
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami_app/core/helpers/app_assets.dart';

class MosqueSplash extends StatelessWidget {
  const MosqueSplash({
    super.key,
    required Animation<double> mosqueOpacity,
  }) : _mosqueOpacity = mosqueOpacity;

  final Animation<double> _mosqueOpacity;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      left: 0,
      right: 0,
      child: FadeTransition(
        opacity: _mosqueOpacity,
        child: Center(
          child: Image.asset(
            Assets.imagesMosque,
            width: 300.w,
            height: 250.h,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
