import 'dart:async';
import 'package:cooking_app_flutter/core/themes/app_colors.dart';
import 'package:cooking_app_flutter/features/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SplashTimerScreen extends StatefulWidget {
  const SplashTimerScreen({super.key});

  @override
  _SplashTimerScreenState createState() => _SplashTimerScreenState();
}

class _SplashTimerScreenState extends State<SplashTimerScreen> {
  @override
  void initState() {
    super.initState();
    // الانتقال بعد 3 ثوانٍ
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => SplashScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: AppColors.backgroundWhite,
      body: Center(
        child: SvgPicture.asset(
          "assets/svg/cooking-food-italia-pizza-svgrepo-com.svg",
            width: 240,
          height: 240, 
        )
        ),
      );
  }
}
