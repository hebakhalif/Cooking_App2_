import 'package:cooking_app_flutter/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'splash_header.dart';
import 'splash_footer.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backgroundWhite,
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

