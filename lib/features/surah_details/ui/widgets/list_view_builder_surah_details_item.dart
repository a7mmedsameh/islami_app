import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami_app/core/theming/colors.dart';
import 'package:islami_app/core/theming/styles.dart';
import 'package:islami_app/features/surah_details/data/models/sura_details_response_model.dart';

class ListViewBuilderSurahDetailsItem extends StatelessWidget {
  const ListViewBuilderSurahDetailsItem({super.key, required this.detailsSura});

  final DetailsSura detailsSura;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      itemCount: detailsSura.ayahs?.length ?? 0,
      itemBuilder: (context, i) {
        final ayah = detailsSura.ayahs![i];
        return Container(
          margin: EdgeInsets.symmetric(vertical: 5.r),
          padding: EdgeInsets.all(16.r),
          decoration: BoxDecoration(
            border: Border.all(color: ColorsManager.mainGold, width: 1),
            borderRadius: BorderRadius.circular(12),
          ),
          alignment: Alignment.center,
          child: Center(
            child: Text(
              "[${ayah.numberInSurah}] ${ayah.text!.trim()}",
              style: AppTextStyles.font20WhiteBold2.copyWith(
                color: ColorsManager.mainGold,
                fontSize: 21.sp,
                height: 1.6
              ),
              textAlign: TextAlign.center,
            ),
          ),
        );
      },
    );
  }
}
