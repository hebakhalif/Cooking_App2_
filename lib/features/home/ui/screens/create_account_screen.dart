import 'package:cooking_app_flutter/core/themes/app_colors.dart';
import 'package:cooking_app_flutter/features/home/ui/screens/layout_screen.dart';
import 'package:cooking_app_flutter/features/home/ui/widget/CustomAppBar.dart';
import 'package:cooking_app_flutter/features/home/ui/widget/CustomButton.dart';
import 'package:cooking_app_flutter/features/home/ui/widget/CustomTextField.dart';
import 'package:flutter/material.dart';

class CreateAccountScreen extends StatelessWidget {
  CreateAccountScreen({super.key});

  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Create an account",
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Share your account with your family and across devices.",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black38),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Email address",
              style: TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Customtextfield(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              obscureText: true,
            ),
            SizedBox(
              height: 24,
            ),
            Custombutton(
                text: "Done",
                width: 390,
                height: 50,
                color: AppColors.kPrimarColor,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>  LayoutScreen(),
                    ));
                }),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "By using Mealim you agree to our",
                  style: TextStyle(color: Colors.black45, fontSize: 16),
                ),
                const SizedBox(width: 10),
                GestureDetector(
                  onTap: () {
                    // Navigator.push(context,
                    // MaterialPageRoute(builder: (context)=>  SingIn())
                    // ) ;
                  },
                  child: Text(
                    "Terms",
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Colors.black45,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
