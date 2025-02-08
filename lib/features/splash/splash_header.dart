import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SplashHeader extends StatelessWidget {
  const SplashHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "FlavorMate",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
         Image.asset(
          "assets/images/logo.png",
          height: 140,
        ),
      ],
    );
  }}