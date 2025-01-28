
import 'package:cooking_app_flutter/features/categories/breakfast_screen.dart';
import 'package:cooking_app_flutter/features/categories/dinner_screen.dart';
import 'package:cooking_app_flutter/features/categories/lunchs_screen.dart';
import 'package:cooking_app_flutter/features/home/ui/screens/home_screen.dart';
import 'package:flutter/material.dart';

class CategorySelector extends StatefulWidget {
  @override
  _CategorySelectorState createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  String selectedCategory = 'All'; // Default selected category

  final List<Map<String, dynamic>> categories = [ 
     {"name":"All" , "Page": HomeScreen() },
     {"name":"Dinner" , "Page": DinnerScreen() },
       {"name":"Lunch" , "Page": LunchsScreen() },
       {"name":"Breakfast" , "Page": BreakfastScreen()},
    ];
  
  void onCategoryTap(String category, Widget page) {
    setState(() {
      selectedCategory = category; // Change selected category
    });

    // Navigate to the corresponding page
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => page,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: categories.map((category) {
          final bool isSelected = category ["name"] == selectedCategory;

          return GestureDetector(
            onTap: ()=> onCategoryTap(category["name"], category["Page"]),
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 15.0),
              padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 13.0),
              decoration: BoxDecoration(
                color:
                 isSelected ? Colors.amber 
                 : Colors.grey.shade200,
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Text(
                category["name"],
                style: TextStyle(
                  color: isSelected ? Colors.white : Colors.black,
                  fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

