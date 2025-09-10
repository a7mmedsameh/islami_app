import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:islami_app/core/helpers/app_assets.dart';
import 'package:islami_app/core/theming/colors.dart';
import 'package:islami_app/core/widgets/salomon_bottom_bar.dart';

 SalomonBottomBarItem quranBottomBarIcon() {
    return SalomonBottomBarItem(
      icon: SvgPicture.asset(
        Assets.svgsQuranIcon,
        colorFilter: const ColorFilter.mode(
          ColorsManager.black,
          BlendMode.srcIn,
        ),
      ),
      title: const Text("قرآن", style: TextStyle(color: Colors.white)),
      selectedColor: ColorsManager.black,
      activeIcon: SvgPicture.asset(
        Assets.svgsQuranIcon,
        colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
      ),
    );
  }