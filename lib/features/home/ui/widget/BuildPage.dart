import 'package:cooking_app_flutter/core/themes/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// الويدجت الخاصه بصفخه about the app
Widget buildPage({
  required String title,
  required List<String> description,
  required String imagePath,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            title,
            maxLines: 2,
            textAlign: TextAlign.center,
            style: TextStyles.font32blackbold,
          ),
        ),
        SizedBox(height: 20.h),
        Image.asset(
          imagePath,
          height: 180,
        ),
        SizedBox(height: 35.h),
        ...description.map((text) => Center(
              child: Text(
                text,
                style: TextStyles.font16blak45,
                textAlign: TextAlign.center,
              ),
            )),
      ],
    ),
  );
}
