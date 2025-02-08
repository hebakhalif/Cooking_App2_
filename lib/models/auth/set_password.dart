import 'package:cooking_app_flutter/core/themes/app_colors.dart';
import 'package:cooking_app_flutter/features/home/ui/screens/layout_screen.dart';
import 'package:cooking_app_flutter/features/home/ui/widget/CustomAppBar.dart';
import 'package:cooking_app_flutter/features/home/ui/widget/CustomButton.dart';
import 'package:cooking_app_flutter/features/home/ui/widget/CustomTextField.dart';
import 'package:flutter/material.dart';

/*class SetPasswordScreen extends StatelessWidget {
  const SetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Set your password",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Enert the email address you used for your FlavorMate account, and we'll send you instructions",
              maxLines: 2,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Account Email",
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
              keyboardType: TextInputType.emailAddress,
              obscureText: true,
            ),
            SizedBox(
              height: 20,
            ),
            Custombutton(
              textColor: Colors.white,
                text: "Send Instructions",
                width: 370,
                height: 50,
                color: AppColors.kPrimarColor,
                onPressed: () {}
                /* Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomeScreen(),
                  ),*/
                ),
          ],
        ),
      ),
    );
  }
}*/

class SetPassword extends StatefulWidget {
  const SetPassword({super.key});

  @override
  State<SetPassword> createState() => _SetPasswordState();
}

class _SetPasswordState extends State<SetPassword> {

    final TextEditingController emailController = TextEditingController();

    String? errorMessage;

     void _validateAndNavigate(){
      if (emailController.text.isEmpty){
        setState(() {
          errorMessage="Plase Enter your Email";

        });
      } else{
        setState(() {
          errorMessage=null;
        });
        Navigator.push(
          context,
           MaterialPageRoute(
            builder: (context)=> LayoutScreen()
            ),
           );
      }
     }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Set your password",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Enert the email address you used for your FlavorMate account, and we'll send you instructions",
              maxLines: 2,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Account Email",
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
              obscureText: false,
             
            ),
             if (errorMessage != null) // عرض رسالة الخطأ إذا كانت موجودة
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  errorMessage!,
                  style: TextStyle(color: Colors.red, fontSize: 14),
                ),
              ),
     
            SizedBox(
              height: 20,
            ),
            Custombutton(
              textColor: Colors.white,
                text: "Send Instructions",
                width: 370,
                height: 50,
                color: AppColors.kPrimarColor,
                 onPressed: _validateAndNavigate, 
                ),
          ],
        ),
      ),
    );
  }
}