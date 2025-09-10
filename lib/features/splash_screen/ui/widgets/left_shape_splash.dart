
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami_app/core/helpers/app_assets.dart';

class LeftShapeSplash extends StatelessWidget {
  const LeftShapeSplash({
    super.key,
    required this.screenH,
    required Animation<Offset> leftShapeOffset,
  }) : _leftShapeOffset = leftShapeOffset;

  final double screenH;
  final Animation<Offset> _leftShapeOffset;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: screenH * 0.20,
      left: 0,
      child: SlideTransition(
        position: _leftShapeOffset,
        child: Image.asset(
          Assets.imagesShape,
          height: 150.h,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}