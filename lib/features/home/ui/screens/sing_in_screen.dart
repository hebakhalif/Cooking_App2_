import 'package:cooking_app_flutter/core/themes/app_colors.dart';
import 'package:cooking_app_flutter/features/home/ui/screens/about_the_app_screen.dart';
import 'package:cooking_app_flutter/features/home/ui/screens/set_password_screen.dart';
import 'package:cooking_app_flutter/features/home/ui/widget/CustomAppBar.dart';
import 'package:cooking_app_flutter/features/home/ui/widget/CustomButton.dart';
import 'package:cooking_app_flutter/features/home/ui/widget/CustomTextField.dart';
import 'package:cooking_app_flutter/features/home/ui/widget/PasswordField.dart';
import 'package:flutter/material.dart';

class SingIn extends StatelessWidget {
  SingIn({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
       appBar: CustomAppBar(),
      body: Expanded(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Sign in",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Email",
                  style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
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
                  height: 20,
                ),
                Text(
                  "Password",
                  style: TextStyle(
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                  ),
                ),
                Passwordfield(controller: passwordController),
                SizedBox(
                  height: 30,
                ),
                Custombutton(
                  textColor: Colors.white,
                    text: "Sign in",
                    width: 370,
                    height: 50,
                    color: AppColors.kPrimarColor,
                    onPressed: () {
                    //Navigator.push(
                       // context,
                        //MaterialPageRoute(
                         // builder: (context) => const PickYourPlanScreen(),
                         //);
                    }),
                SizedBox(
                  height: 10,
                ),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SetPasswordScreen(),
                          ));
                    },
                    child: Center(
                      child: Text(
                        "l don't have my password",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black45,
                        ),
                      ),
                    )),
                SizedBox(height: 2,),  
             // Spacer(flex: 1),
             SizedBox(height: 200,),
                Center(
                    child: Text(
                  "Dont have a FlavorMate account?",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.black45,
                  ),
                )),
                SizedBox(
                  height: 10,
                ),
                Custombutton(
                    text: "Create Account",
                    textColor: Colors.black45,
                    width: 370,
                    height: 50,
                    color: const Color.fromARGB(221, 221, 221, 226),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>  PageViewExample(),
                          ));
                    }),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
