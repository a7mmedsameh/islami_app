import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:islami_app/core/helpers/app_assets.dart';
import 'package:islami_app/core/helpers/extensions.dart';
import 'package:islami_app/core/routing/routes.dart';
import 'package:islami_app/core/theming/styles.dart';
import 'package:islami_app/features/home/data/models/surahs_response_model.dart';

class SurasQuranListTile extends StatelessWidget {
  final SurahsData? surahsData;
  const SurasQuranListTile({super.key, required this.surahsData});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            context.pushNamed(Routes.surahDetailsScreen);
          },
          child: ListTile(
            contentPadding: const EdgeInsets.all(0),
            leading: SizedBox(
              width: 60.w,
              height: 60.h,
              child: Stack(
                children: [
                  SvgPicture.asset(Assets.svgsVector),
                  Center(
                    child: Text(
                      surahsData?.number?.toString() ?? '',
                      style: AppTextStyles.font20WhiteBold.copyWith(
                        fontSize: (surahsData?.number ?? 0) > 99
                            ? 12.3.sp
                            : (surahsData?.number ?? 0) > 9
                            ? 16.sp
                            : 20.sp,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            subtitle: Text(
              'عدد الآيات : ${surahsData?.numberOfAyahs.toString()}',
              style: AppTextStyles.font14WhiteBold,
            ),
            trailing: Text(
              surahsData?.englishName ?? '',
              style: AppTextStyles.font20WhiteBold,
            ),
            title: Text(
              surahsData?.name ?? '',
              style: AppTextStyles.font20WhiteBold.copyWith(
                fontFamily: 'Roboto',
              ),
            ),
          ),
        ),
      ],
    );
  }
}
