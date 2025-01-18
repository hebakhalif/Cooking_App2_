import 'package:cooking_app_flutter/core/themes/app_colors.dart';
import 'package:cooking_app_flutter/features/home/ui/screens/create_account_screen.dart';
import 'package:cooking_app_flutter/features/home/ui/widget/CustomAppBar.dart';
import 'package:cooking_app_flutter/features/home/ui/widget/CustomButton.dart';
import 'package:flutter/material.dart';

class PickYourDietScreen extends StatefulWidget {
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
      appBar: CustomAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              "Pick your diet",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 20),
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
                        horizontal: 10.0, vertical: 3.0),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16.0, vertical: 13.0),
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
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        if (option['subtitle']!.isNotEmpty)
                          Text(
                            option['subtitle']!,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black54,
                            ),
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
                text: "Get Started",
                width: 150,
                height: 50,
                color: AppColors.kPrimarColor,
                onPressed: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CreateAccountScreen(),
                    ));
                }),
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
