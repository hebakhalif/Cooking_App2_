
import 'package:cooking_app_flutter/core/themes/app_colors.dart';
import 'package:cooking_app_flutter/features/home/ui/screens/about_the_app_screen.dart';
import 'package:cooking_app_flutter/features/home/ui/screens/sing_in_screen.dart';
import 'package:cooking_app_flutter/features/home/ui/widget/CustomButton.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "FlavorMate",
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                
                Image.asset(
                  "assets/images/food.png",
                  height: 150,
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
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
                    builder: (context) =>  PageViewExample(),
                  ));
                }
                ),
                const SizedBox(height: 10), 
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already a member?",
                    style: TextStyle(color: Colors.black45,
                    fontSize: 18),
                    ),
                    const SizedBox(width: 10), 

                    GestureDetector(
                      onTap: () {
                      Navigator.push(context, 
                      MaterialPageRoute(builder: (context)=>  SingIn())
                      ) ;
                      },
                      child: Text(
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
            ),
          ),
        ],
      ),
    );
  }}
