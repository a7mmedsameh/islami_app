import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami_app/core/helpers/app_assets.dart';
import 'package:islami_app/core/helpers/spacing.dart';
import 'package:islami_app/core/widgets/app_text_field.dart';
import 'package:islami_app/features/home/ui/widgets/background_for_home_page.dart';
import 'package:islami_app/features/home/ui/widgets/color_linear_for_home_page.dart';
import 'package:islami_app/core/widgets/islami_logo_and_mosque.dart';
import 'package:islami_app/features/home/ui/widgets/most_recently_text_and_list_view_builder.dart';
import 'package:islami_app/features/home/ui/widgets/quran_list_text_and_list_view_builder.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarIconBrightness: Brightness.light),
    );
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          const BackgroundForHomePage(),
          const ColorLinearForHomePage(),
          SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                children: [
                  verticalSpace(15),
                 const IslamiLogoAndMosque(),
                  verticalSpace(25),
                  const AppTextField(
                    hintText: 'اسم السورة',
                    prefixIcon: Assets.svgsQuranIcon,
                  ),
                  verticalSpace(25),
                  const MostRecenltyTextAndListViewBuilder(),
                  verticalSpace(25),
                  const QuranListTextAndListViewBuilder(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
