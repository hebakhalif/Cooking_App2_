import 'package:cooking_app_flutter/core/themes/app_colors.dart';
import 'package:cooking_app_flutter/features/home/ui/screens/favorites_screen.dart';
import 'package:cooking_app_flutter/features/home/ui/screens/groceris_screen.dart';
import 'package:cooking_app_flutter/features/home/ui/screens/home_screen.dart';
import 'package:cooking_app_flutter/features/home/ui/screens/profile_screen.dart';
import 'package:flutter/material.dart';

  class LayoutScreen extends StatefulWidget {
  const LayoutScreen({super.key}); 

  @override
  _LayoutScreenState createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    HomeScreen(),
    GrocerisScreen(),
    FavoritesScreen(),
    ProfileScreen(),
  ];

  void _onTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) { 
    return Scaffold(
        backgroundColor: AppColors.backgroundWhite,
      body: _screens[_selectedIndex],  
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex, 
        onTap: _onTap,
        selectedItemColor: AppColors.kPrimarColor,  // لون الايتم الي انا واقفه عليها 
        unselectedItemColor: Colors.grey,  // لون الايتم الي مش واقفه عليها 
        iconSize: 30.0, 
        selectedLabelStyle: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),  // تكبير النص للأيقونات المحددة
        unselectedLabelStyle: TextStyle(
          fontSize: 12.0,
           color: Colors.grey,
        ),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: "Groceris"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: "Favorites"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}