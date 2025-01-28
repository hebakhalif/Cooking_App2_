import 'dart:async';
import 'package:cooking_app_flutter/features/splash/splash_screen.dart';
import 'package:flutter/material.dart';

class SplashTimerScreen extends StatefulWidget {
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
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset(
          "assets/images/food.png",
          width: 240,
          height: 240,
        ),
      ),
    );
  }
}
