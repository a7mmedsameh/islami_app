
import 'package:flutter/material.dart';
import 'package:islami_app/core/helpers/spacing.dart';
import 'package:islami_app/features/home/ui/widgets/custom_title_text.dart';
import 'package:islami_app/features/home/ui/widgets/list_view_builder_most_recently.dart';

class MostRecenltyTextAndListViewBuilder extends StatelessWidget {
  const MostRecenltyTextAndListViewBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomTitleText(text: 'أحدث تشغيل',),
        verticalSpace(15),
        const ListViewBuilderMostRecently(),
      ],
    );
  }
}
