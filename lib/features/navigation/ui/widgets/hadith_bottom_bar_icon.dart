import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:islami_app/core/helpers/app_assets.dart';
import 'package:islami_app/core/theming/colors.dart';
import 'package:islami_app/core/widgets/salomon_bottom_bar.dart';

 SalomonBottomBarItem hadithBottomBarIcon() {
    return SalomonBottomBarItem(
      icon: SvgPicture.asset(
        Assets.svgsIconHadith,
        colorFilter: const ColorFilter.mode(
          ColorsManager.black,
          BlendMode.srcIn,
        ),
      ),
      title: const Text("أحاديث", style: TextStyle(color: Colors.white)),
      selectedColor: ColorsManager.black,
      activeIcon: SvgPicture.asset(
        Assets.svgsIconHadith,
        colorFilter: const ColorFilter.mode(Colors.white, BlendMode.srcIn),
      ),
    );
  }