import 'package:flutter/material.dart';
import 'package:islami_app/core/helpers/spacing.dart';
import 'package:islami_app/features/home/data/models/surahs_response_model.dart';
import 'package:islami_app/features/home/ui/widgets/custom_title_text.dart';
import 'package:islami_app/features/home/ui/widgets/list_view_builder_quran_list.dart';

class QuranListTextAndListViewBuilder extends StatelessWidget {
    final List<SurahsData> surahsList;
  const QuranListTextAndListViewBuilder({super.key, required this.surahsList});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          const CustomTitleText(text: 'قائمة سور القرآن الكريم'),
          verticalSpace(10),
          Expanded(child: ListViewBuilderQuranList(surahsList: surahsList,)),
        ],
      ),
    );
  }
}
