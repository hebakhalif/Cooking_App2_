import 'package:cooking_app_flutter/core/Routing/app_router.dart';
import 'package:cooking_app_flutter/core/Routing/routes.dart';
import 'package:cooking_app_flutter/core/themes/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Flavormate extends StatelessWidget {
  final AppRouter appRouter ;
  const Flavormate({super.key,
  required this.appRouter
  });

  @override
  Widget build(BuildContext context) {
   return ScreenUtilInit(
      designSize: const Size(374, 812), 
      minTextAdapt: true,
      builder: (context, child) {
    return  MaterialApp(
      theme: ThemeData(
        primaryColor:  AppColors. kPrimarColor,
        brightness:Brightness.light
      ),
       initialRoute: Routes.splashTimerScreen, 
       debugShowCheckedModeBanner: false,
       onGenerateRoute: appRouter.generateRoute,
       );
      },
    );
  }}