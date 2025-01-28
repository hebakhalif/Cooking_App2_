import 'package:flutter/material.dart';
import 'splash_header.dart';
import 'splash_footer.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: const [
          Expanded(
            flex: 2,
            child: SplashHeader(),
          ),
          Expanded(
            flex: 1,
            child: SplashFooter(),
          ),
        ],
      ),
    );
  }}

