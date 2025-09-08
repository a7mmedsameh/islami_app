import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/core/theming/colors.dart';

class CustomScaffold extends StatelessWidget {
  final Widget body;

  const CustomScaffold({super.key, required this.body});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.light,
      ),
    );

    return Scaffold(backgroundColor: ColorsManager.black, body: body);
  }
}
