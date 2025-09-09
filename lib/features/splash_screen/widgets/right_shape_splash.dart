
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami_app/core/helpers/app_assets.dart';

class RightShapeSplash extends StatelessWidget {
  const RightShapeSplash({
    super.key,
    required this.screenH,
    required Animation<Offset> rightShapeOffset,
  }) : _rightShapeOffset = rightShapeOffset;

  final double screenH;
  final Animation<Offset> _rightShapeOffset;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: screenH * 0.70,
      right: 0,
      child: SlideTransition(
        position: _rightShapeOffset,
        child: Image.asset(
          Assets.imagesShape,
          height: 150.h,
          fit: BoxFit.contain,
          matchTextDirection: true,
        ),
      ),
    );
  }
}