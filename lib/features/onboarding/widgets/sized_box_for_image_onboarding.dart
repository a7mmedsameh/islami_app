import 'package:flutter/material.dart';

class SizedBoxForImageOnboarding extends StatelessWidget {
  final String assetsImage;
  const SizedBoxForImageOnboarding({super.key, required this.assetsImage});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.35,
      child: Image.asset(assetsImage),
    );
  }
}