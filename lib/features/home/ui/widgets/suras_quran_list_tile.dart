import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:islami_app/core/helpers/app_assets.dart';
import 'package:islami_app/core/theming/styles.dart';

class SurasQuranListTile extends StatelessWidget {
  const SurasQuranListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          contentPadding: const EdgeInsets.all(0),
          leading: SizedBox(
            width: 50.w,
            height: 50.w,
            child: Stack(
              children: [
                SvgPicture.asset(Assets.svgsVector),
                Center(child: Text('1', style: AppTextStyles.font20WhiteBold)),
              ],
            ),
          ),
          subtitle: Text('7 verses', style: AppTextStyles.font14WhiteBold),
          trailing: Text('الفاتحة', style: AppTextStyles.font20WhiteBold),
          title: Text('Al-Fatiha', style: AppTextStyles.font20WhiteBold),
        ),
      ],
    );
  }
}
