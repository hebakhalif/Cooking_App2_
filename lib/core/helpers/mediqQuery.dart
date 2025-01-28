
 import 'package:flutter/material.dart';

extension MediqQueryHelper on BuildContext{
  double get ScreenHeighe => MediaQuery.of(this).size.height;


   double get ScreenWidth => MediaQuery.of(this).size.width;

}  

