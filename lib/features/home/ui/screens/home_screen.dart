import 'package:cooking_app_flutter/core/themes/app_colors.dart';
import 'package:cooking_app_flutter/core/themes/styles.dart';
import 'package:cooking_app_flutter/features/home/ui/screens/profile_screen.dart';
import 'package:cooking_app_flutter/features/home/ui/widget/Categories_Selector_Widget.dart';
import 'package:cooking_app_flutter/features/home/ui/widget/CustomFoodItem.dart';
import 'package:cooking_app_flutter/core/helpers/navigator.dart';
import 'package:cooking_app_flutter/features/home/ui/widget/HomeHeader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backgroundWhite,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Expanded(
              child: Column(
                children: [
                   HomeheaderWidget(),
                  SizedBox(height: 15.h),
                  Text(
                    "Categories",
                    style: TextStyles.font20bold
                  ),
                  SizedBox(height: 10.h),
                  
                  CategorySelector(),

                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Quick & Easy",
                          style: TextStyles.font20bold
                        ),
                        TextButton(
                          onPressed: () {
                            context.push(ProfileScreen());
                          },
                          child: Text(
                            "View all",
                            style: TextStyles.font17blueGreybold,
                          )
                        ),
                      ],
                    ),
                  ),
                  // Fooditemwidget() ,

                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Customfooditem(
                          text:
                              "Spicy Peruvian Roast\n Chicken with Sweet\n Potatoes & Cilantro-Fet",
                          ImagePath:
                              "assets/images/WhatsApp Image 2025-01-27 at 11.41.48 PM.jpeg",
                          onPressed: () {
                            context.push(const ProfileScreen());
                          },
                        ),
                        Customfooditem(
                          text:
                              "Spicy Peruvian Roast\n Chicken with Sweet\n Potatoes & Cilantro-Fet",
                          ImagePath: "assets/images/Diyet menüleri.jpeg",
                          onPressed: () {
                            context.push(const ProfileScreen());
                          },
                        ),
                        Customfooditem(
                          text:
                              "Spicy Peruvian Roast\n Chicken with Sweet\n Potatoes & Cilantro-Fet",
                          ImagePath: "assets/images/download (5).jpeg",
                          onPressed: () {
                            context.push(const ProfileScreen());
                          },
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
