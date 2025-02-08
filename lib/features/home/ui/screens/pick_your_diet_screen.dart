import 'package:cooking_app_flutter/core/themes/app_colors.dart';
import 'package:cooking_app_flutter/core/themes/styles.dart';
import 'package:cooking_app_flutter/features/home/ui/screens/servings_screen.dart';
import 'package:cooking_app_flutter/features/home/ui/widget/CustomAppBar.dart';
import 'package:cooking_app_flutter/features/home/ui/widget/CustomButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PickYourDietScreen extends StatefulWidget {
  const PickYourDietScreen({super.key});

  @override
  _PickYourDietScreenState createState() => _PickYourDietScreenState();
}

class _PickYourDietScreenState extends State<PickYourDietScreen> {
  int? selectedIndex;

  final List<Map<String, String>> dietOptions = [
    {"title": "Classic", "subtitle": "No holds barred"},
    {"title": "Low Carb", "subtitle": ""},
    {"title": "Keto", "subtitle": ""},
    {"title": "Flexitarian", "subtitle": ""},
    {"title": "Paleo", "subtitle": ""},
    {"title": "Vegetarian", "subtitle": ""},
    {"title": "Pescatarian", "subtitle": ""},
    {"title": "Vegan", "subtitle": ""},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backgroundWhite,
      appBar: CustomAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              "Pick your diet",
              style: TextStyles.font26bold,
            ),
          ),
          SizedBox(height: 20.h),
          Expanded(
            child: ListView.builder(
              itemCount: dietOptions.length,
              itemBuilder: (context, index) {
                final option = dietOptions[index];
                final isSelected = selectedIndex == index;

                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 4.0),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 10.0),
                    decoration: BoxDecoration(
                      color: isSelected
                          ? Colors.amber.shade200
                          : Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          option['title']!,
                          style: TextStyles.font18bold,    
                        ),
                        if (option['subtitle']!.isNotEmpty)
                          Text(
                            option['subtitle']!,
                            style: TextStyles.font16blak45,
                          ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Center(
            child: Custombutton(
                text: "Continue",
                width: 150,
                height: 50,
                color: AppColors.kPrimarColor,
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ServingsScreen(),
                      ));
                }),
          ),
          SizedBox(
            height: 30.h,
          ),
        ],
      ),
    );
  }
}
