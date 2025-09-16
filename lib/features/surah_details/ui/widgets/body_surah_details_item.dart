import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami_app/core/helpers/spacing.dart';
import 'package:islami_app/features/surah_details/data/models/sura_details_response_model.dart';
import 'package:islami_app/features/surah_details/ui/widgets/header_surah_details_item.dart';
import 'package:islami_app/features/surah_details/ui/widgets/list_view_builder_surah_details_item.dart';

class BodySuraDetailsItem extends StatelessWidget {
  const BodySuraDetailsItem({
    super.key,
    required this.detailsSura,
  });

  final DetailsSura detailsSura;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
      child: ListView(
        children: [
          HeaderSurahDetailsItem(detailsSura: detailsSura),
          verticalSpace(16),
          ListViewBuilderSurahDetailsItem(detailsSura: detailsSura),
        ],
      ),
    );
  }
}
