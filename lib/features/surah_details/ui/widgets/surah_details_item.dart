import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami_app/core/theming/colors.dart';
import 'package:islami_app/core/theming/styles.dart';
import 'package:islami_app/core/widgets/custom_scaffold.dart';
import 'package:islami_app/features/surah_details/data/models/sura_details_response_model.dart';
import 'package:islami_app/features/surah_details/ui/widgets/body_surah_details_item.dart';
import 'package:islami_app/features/surah_details/ui/widgets/footer_quran_player.dart';

class SurahDetailsItem extends StatelessWidget {
  final DetailsSura detailsSura;
  const SurahDetailsItem({super.key, required this.detailsSura});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        iconTheme: const IconThemeData(color: ColorsManager.mainGold),
        backgroundColor: Colors.transparent,
        title: Text(
          detailsSura.englishName ?? '',
          style: AppTextStyles.font20WhiteBold.copyWith(
            color: ColorsManager.mainGold,
            fontSize: 22.sp,
          ),
        ),
        centerTitle: true,
        toolbarHeight: 40,
      ),
      body: Column(
        children: [
          Expanded(child: BodySuraDetailsItem(detailsSura: detailsSura)),
          FooterQuranPlayer(detailsSura: detailsSura),
        ],
      ),
    );
  }
}
