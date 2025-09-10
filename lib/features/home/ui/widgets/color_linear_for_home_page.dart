
import 'package:flutter/material.dart';

class ColorLinearForHomePage extends StatelessWidget {
  const ColorLinearForHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned.fill(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xB3202020), Color(0xFF202020)],
            stops: [0.0, 1.0],
          ),
        ),
      ),
    );
  }
}
