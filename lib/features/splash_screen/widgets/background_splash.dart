
import 'package:flutter/material.dart';
import 'package:islami_app/core/helpers/app_assets.dart';

class BackGroundSplash extends StatelessWidget {
  const BackGroundSplash({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Positioned.fill(
      child: DecoratedBox(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(Assets.imagesLastBackgroundSplash),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
