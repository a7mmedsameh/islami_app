import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islami_app/core/di/dependency_injection.dart';
import 'package:islami_app/core/theming/colors.dart';
import 'package:islami_app/core/widgets/salomon_bottom_bar.dart';
import 'package:islami_app/features/home/logic/cubit/home_cubit.dart';
import 'package:islami_app/features/home/ui/home_screen.dart';
import 'package:islami_app/features/navigation/ui/widgets/hadith_bottom_bar_icon.dart';
import 'package:islami_app/features/navigation/ui/widgets/quran_bottom_bar_icon.dart';
import 'package:islami_app/features/navigation/ui/widgets/radio_bottom_bar_icon.dart';
import 'package:islami_app/features/navigation/ui/widgets/sebha_bottom_bar_icon.dart';
import 'package:islami_app/features/navigation/ui/widgets/time_azkar_bottom_bar_icon.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    BlocProvider(
      create: (context) => getIt<HomeCubit>()..getAllSurahs(),
      child: const HomeScreen(),
    ),
    const Placeholder(),
    const Placeholder(),
    const Placeholder(),
    const Placeholder(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSwitcher(
        duration: const Duration(milliseconds: 400),
        transitionBuilder: (child, animation) {
          return FadeTransition(opacity: animation, child: child);
        },
        child: _screens[_currentIndex],
      ),
      bottomNavigationBar: SalomonBottomBar(
        backgroundColor: ColorsManager.mainGold,
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        items: [
          quranBottomBarIcon(),
          hadithBottomBarIcon(),
          sebhaBottomBarIcon(),
          radioBottomBarIcon(),
          timeAzkarBottomBarIcon(),
        ],
      ),
    );
  }
}
