import 'package:cooking_app_flutter/core/themes/app_colors.dart';
import 'package:cooking_app_flutter/features/home/ui/screens/pick_your_diet_screen.dart';
import 'package:cooking_app_flutter/features/home/ui/widget/BuildPage.dart';
import 'package:cooking_app_flutter/features/home/ui/widget/CustomAppBar.dart';
import 'package:cooking_app_flutter/features/home/ui/widget/CustomButton.dart';
import 'package:flutter/material.dart';


class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage =0;

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundWhite,
      appBar: CustomAppBar(),
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              children: [
                buildPage(
                   title: "Personalize\nmeal plannig",
                  description: [
                    "Pick your week's meals in minutes. with",
                    "over 200 personalized options, eat",
                    "exactly how you want to eat.",
                  ],
                   imagePath: "assets/images/WhatsApp_Image_2025-01-15_at_7.26.43_PM-removebg-preview.png",
                  ),
               
                buildPage(
                  title: "Simple,stress-free\ngrocery shopping",
                  description: [
                    "Grocery shop once per week an ",
                    "organized done for yoy shopping list.",
                   
                  ],
                  imagePath: "assets/images/WhatsApp_Image_2025-01-15_at_7.26.45_PM-removebg-preview.png",
                ),
                buildPage(
                  title: "Delicious, healthy\nmeals made easy",
                  description: [
                    "Easily cook healthy delicious meals in",
                    "about 30 minutes, from start to finish.",   
                  ],
                  imagePath: "assets/images/WhatsApp_Image_2025-01-15_at_7.26.45_PM__1_-removebg-preview.png",
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(3, (index) {
              return Container(
                margin: EdgeInsets.all(8),
                width: 10,
                height: 10,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _currentPage == index ? Colors.blueGrey: Colors.grey,
                ),
              );
            }),
          ),
          SizedBox(height: 20), 
          Custombutton(
            text: "Continue",
             width: 150,
              height: 50,
               color:  AppColors.kPrimarColor,
                onPressed: (){
                   
                   if(_currentPage <2){
                    _pageController.animateToPage(
                      _currentPage +1, // هنا لما بدوس ع الزر بيعدي صفحه صفحه 
                       duration: Duration(milliseconds: 300),

                        curve: Curves.easeInOut,
                        );
                   } else{

                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>  PickYourDietScreen(),));
                }
                },
                ),
                SizedBox(height: 20),
        ],
      ),
    );
  }
}



