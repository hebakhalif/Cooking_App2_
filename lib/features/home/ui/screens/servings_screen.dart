import 'package:cooking_app_flutter/core/themes/app_colors.dart';
import 'package:cooking_app_flutter/core/themes/styles.dart';
import 'package:cooking_app_flutter/features/home/ui/screens/create_account_screen.dart';
import 'package:cooking_app_flutter/features/home/ui/widget/CustomAppBar.dart';
import 'package:cooking_app_flutter/features/home/ui/widget/CustomButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ServingsScreen extends StatefulWidget {
  const ServingsScreen({super.key});

  @override
  State<ServingsScreen> createState() => _ServingsScreenState();
}
 

class _ServingsScreenState extends State<ServingsScreen> {

  int? selectedIndex;


  final List<Map<String, String >> dietOptions = [
    {"title": "2 servings ", "subtitle": "for tow, or one with leftovers", },
    {"title": "4 servings", "subtitle": "for four, or two_three with leftovers"},
    {"title": "6 servings", "subtitle": "for a family of 5+"},
   
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
              "How mant servings per meal?",
              style: TextStyles.font26bold,
            ),
          ),
          SizedBox(height: 20.h),
          Expanded(
            child: ListView.builder(
              itemCount: dietOptions.length,
              itemBuilder: (context, index) {
                final option = dietOptions[index];  // بجيب كل عناصر الليسته وبخزنها في المتغير دا
                final isSelected = selectedIndex == index; // بتحقق ان العنصر دا هو الي محدد
                return GestureDetector(
                  onTap: () {
                    setState(() { // وضيفتها بتعيد بناء الويدجت كل مره 
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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                           option['title']!,
                            style: TextStyles.font18bold,
                        ),
                        Text(
                           option['subtitle']!,
                            style: TextStyles.font16blak45,  
                        )
                      ],
                    ),
                    ),
                );
              })),

                Center(
            child: Custombutton(
                text: "Continue",
                width: 150,
                height: 50,
                color: AppColors.kPrimarColor,
                onPressed: () {
                  // context.push(Routes.createAccount)
                    Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CreateAccountScreen(),
                    ));

                }),
          ),
          SizedBox(height: 30.h),
        ]
      ));
  }
}