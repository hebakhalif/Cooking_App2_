import 'package:cooking_app_flutter/core/themes/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeheaderWidget extends StatelessWidget {
  const HomeheaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "What are you \ncooking today",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Material(
                  color: AppColors.backgroundWhite,
                  elevation: 5,
                  borderRadius: BorderRadius.circular(10),
                  child: IconButton(onPressed: () {}, icon: Icon(Icons.source)))
            ],
          ),
        ),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Material(
              elevation: 2,
              borderRadius: BorderRadius.circular(15),
              child: SizedBox(
                height: 55,
                width: 500,
                child: CupertinoSearchTextField(
                    placeholder: "Search any reciipes",
                    placeholderStyle: TextStyle(color: Colors.grey),
                    backgroundColor: AppColors.backgroundWhite),
              ),
            )),
        SizedBox(height: 15.h),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Material(
            borderRadius: BorderRadius.circular(30),
            elevation: 3,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.asset(
                "assets/images/WhatsApp Image 2025-01-26 at 11.36.42 PM.jpeg",
              ),
            ),
          ),
        ),
      ],
    );
  }
}
