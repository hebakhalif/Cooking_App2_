import 'package:cooking_app_flutter/features/home/ui/widget/CustomButton.dart';
import 'package:flutter/material.dart';
import 'package:cooking_app_flutter/core/themes/app_colors.dart';
import 'package:cooking_app_flutter/features/home/ui/screens/onboarding_screen.dart';
import 'package:cooking_app_flutter/modules/auth/sign_in.dart';


class SplashFooter extends StatelessWidget {
  const SplashFooter({Key? key}) : super(key: key);

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
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Already a member?",
              style: TextStyle(
                color: Colors.black45,
                fontSize: 18,
              ),
            ),
            const SizedBox(width: 10),
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
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
      ],
    );
  }}