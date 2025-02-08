import 'package:flutter/material.dart';
import 'package:cooking_app_flutter/features/home/ui/screens/create_account_screen.dart';
import 'package:cooking_app_flutter/features/home/ui/screens/favorites_screen.dart';
import 'package:cooking_app_flutter/features/home/ui/screens/groceris_screen.dart';
import 'package:cooking_app_flutter/features/home/ui/screens/home_screen.dart';
import 'package:cooking_app_flutter/features/home/ui/screens/layout_screen.dart';
import 'package:cooking_app_flutter/features/home/ui/screens/pick_your_diet_screen.dart';
import 'package:cooking_app_flutter/features/home/ui/screens/profile_screen.dart';
import 'package:cooking_app_flutter/features/home/ui/screens/servings_screen.dart';
import 'package:cooking_app_flutter/features/splash/splash_timer_screen.dart';
import 'package:cooking_app_flutter/features/splash/splash_screen.dart';
import 'package:cooking_app_flutter/features/categories/breakfast_screen.dart';
import 'package:cooking_app_flutter/features/categories/dinner_screen.dart';
import 'package:cooking_app_flutter/features/categories/lunchs_screen.dart';
import 'routes.dart';

class AppRouter {
   Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.createAccount: 
        return MaterialPageRoute(builder: (_) => CreateAccountScreen());
      case Routes.favoritesScreen:
        return MaterialPageRoute(builder: (_) => FavoritesScreen());
      case Routes.groceriesScreen:
        return MaterialPageRoute(builder: (_) => GrocerisScreen());
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case Routes.layoutScreen:
        return MaterialPageRoute(builder: (_) => LayoutScreen());
      case Routes.pickYourDietScreen:
        return MaterialPageRoute(builder: (_) => PickYourDietScreen());
      case Routes.profileScreen:
        return MaterialPageRoute(builder: (_) => ProfileScreen());
      case Routes.servingsScreen:
        return MaterialPageRoute(builder: (_) => ServingsScreen());
      case Routes.splashTimerScreen:
        return MaterialPageRoute(builder: (_) => SplashTimerScreen());
      case Routes.splashScreen:
        return MaterialPageRoute(builder: (_) => SplashScreen());
      case Routes.breakfastScreen:
        return MaterialPageRoute(builder: (_) => BreakfastScreen());
      case Routes.dinnerScreen:
        return MaterialPageRoute(builder: (_) => DinnerScreen());
      case Routes.lunchScreen:
        return MaterialPageRoute(builder: (_) => LunchsScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('Page not found!')),
          ),
        );
    }
  }
}