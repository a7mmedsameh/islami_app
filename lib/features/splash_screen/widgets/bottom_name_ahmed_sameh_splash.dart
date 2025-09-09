
import 'package:flutter/material.dart';
import 'package:islami_app/core/theming/styles.dart';

class BottomNameAhmedSamehSplash extends StatelessWidget {
  const BottomNameAhmedSamehSplash({
    super.key,
    required Animation<Offset> nameOffset,
    required AnimationController nameCtrl,
  }) : _nameOffset = nameOffset, _nameCtrl = nameCtrl;

  final Animation<Offset> _nameOffset;
  final AnimationController _nameCtrl;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 20,
      left: 0,
      right: 0,
      child: SlideTransition(
        position: _nameOffset,
        child: FadeTransition(
          opacity: _nameCtrl,
          child: Center(
            child: Text(
              'Ahmed Sameh',
              style: AppTextStyles.font24Goldregular.copyWith(
                fontFamily: 'kamali',
              ),
            ),
          ),
        ),
      ),
    );
  }
}