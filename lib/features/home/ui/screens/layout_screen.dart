import 'package:cooking_app_flutter/features/home/ui/screens/Favorites_screen.dart';
import 'package:cooking_app_flutter/features/home/ui/screens/groceris_screen.dart';
import 'package:cooking_app_flutter/features/home/ui/screens/meal_screen.dart';
import 'package:cooking_app_flutter/features/home/ui/screens/setting_screen.dart';
import 'package:flutter/material.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({super.key}); 

  @override
  _LayoutScreenState createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  int _selectedIndex = 0;
 
  final List<Widget> _screens = [
     MealScreen(),
     GrocerisScreen(),
     FavoritesScreen(),
     SettingScreen(),
  ];

  void _onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) { 
    return Scaffold(
      //  body: BottomNavigationBar(
       //   items: 
        
       // ),
  
    );
  }
}