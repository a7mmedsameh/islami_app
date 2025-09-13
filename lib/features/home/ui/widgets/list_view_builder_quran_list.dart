import 'package:flutter/material.dart';
import 'package:islami_app/features/home/data/models/surahs_response_model.dart';
import 'package:islami_app/features/home/ui/widgets/suras_quran_list_tile.dart';

class ListViewBuilderQuranList extends StatelessWidget {
    final List<SurahsData> surahsList;

  const ListViewBuilderQuranList({super.key, required this.surahsList});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      itemCount: surahsList.length,
      itemBuilder: (context, i) {
        return SurasQuranListTile(surahsData: surahsList[i],);
      },
      separatorBuilder: (context, i) {
        return const Divider(
          thickness: 1,
          color: Colors.white,
          indent: 30,
          endIndent: 30,
        );
      },
    );
  }
}
