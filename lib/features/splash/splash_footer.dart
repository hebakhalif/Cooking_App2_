import 'package:cooking_app_flutter/features/home/ui/widget/CustomButton.dart';
import 'package:cooking_app_flutter/models/auth/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:cooking_app_flutter/core/themes/app_colors.dart';
import 'package:cooking_app_flutter/features/home/ui/screens/onboarding_screen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class SplashFooter extends StatelessWidget {
  const SplashFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Custombutton(
                text: "Get Started",
                width: 150,
                height: 50,
                color: AppColors.kPrimarColor,
                onPressed: () {
                 Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>  OnboardingScreen(),
                  ));
                }
                ),
         SizedBox(height: 10.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Already a member?",
              style: TextStyle(
                color: Colors.black45,
                fontSize: 16,
              ),
            ),
             SizedBox(width: 10.w),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SingIn()),
                );
              },
              child: const Text(
                "Sign in",
                style: TextStyle(
                  decoration: TextDecoration.underline,
                  color: Colors.black45,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
       SizedBox(height: 20.h),
      ],
    );
  }}