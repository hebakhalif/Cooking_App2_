import 'package:cooking_app_flutter/core/themes/app_colors.dart';
import 'package:cooking_app_flutter/core/themes/styles.dart';
import 'package:cooking_app_flutter/features/home/ui/screens/layout_screen.dart';
import 'package:cooking_app_flutter/features/home/ui/widget/CustomAppBar.dart';
import 'package:cooking_app_flutter/features/home/ui/widget/CustomButton.dart';
import 'package:cooking_app_flutter/features/home/ui/widget/CustomTextField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({super.key});

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  final TextEditingController emailController = TextEditingController();
  String? errorMessage; 

  void _validateAndNavigate() {
    if (emailController.text.isEmpty) {
      setState(() {
        errorMessage = "Please enter your email address";
      });
    } else {
      setState(() {
        errorMessage = null;
      });
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => LayoutScreen(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backgroundWhite,
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
              height: 20.h
            ),
            Text(
              "Share your account with your family and across devices.",
              style: TextStyles.font20blackbold,
            ),
            SizedBox(
              height: 20.h
            ),
            Text(
              "Email address",
              style: TextStyles.font21blac87bold,
            ),
            SizedBox(
              height: 10.h
            ),
            Customtextfield(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              obscureText: false,
            ),
            if (errorMessage != null) // عرض رسالة الخطأ إذا كانت موجودة
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text(
                  errorMessage!,
                  style: TextStyles.fonterrorMessage,  
                ),
              ),
            SizedBox(
              height: 24.h
            ),
            Custombutton(
              text: "Done",
              width: 390,
              height: 50,
              color: AppColors.kPrimarColor,
              onPressed: _validateAndNavigate, // التحقق قبل الانتقال
            ),
            SizedBox(
              height: 20.h
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Text(
                  "By using Mealim you agree to our",
                  style: TextStyles.font16blak45,
                ),
                 SizedBox(width: 10.w),
                GestureDetector(
                  child: Text(
                    "Terms",
                    style: TextStyles.font16blak45bold,
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

