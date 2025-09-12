import 'package:flutter/material.dart';
import 'package:islami_app/features/home/ui/widgets/suras_quran_list_tile.dart';

class ListViewBuilderQuranList extends StatelessWidget {
  const ListViewBuilderQuranList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      itemCount: 5,
      itemBuilder: (context, i) {
        return const SurasQuranListTile();
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
