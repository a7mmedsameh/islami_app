import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami_app/features/home/ui/widgets/item_most_recenlty.dart';

class ListViewBuilderMostRecently extends StatelessWidget {
  final int? itemIndex;
  const ListViewBuilderMostRecently({super.key, this.itemIndex});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 165.h,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemCount: 7,
        itemBuilder: (context, i) {
          return Padding(
            padding: EdgeInsets.only(right: i == 0 ? 0 : 10.w),
            child: const ItemMostRecently(),
          );
        },
      ),
    );
  }
}
