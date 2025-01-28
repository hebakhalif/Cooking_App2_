import 'package:flutter/material.dart';

class SplashHeader extends StatelessWidget {
  const SplashHeader({Key? key}) : super(key: key);

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
          "assets/images/food.png",
          height: 150,
        ),
      ],
    );
  }}