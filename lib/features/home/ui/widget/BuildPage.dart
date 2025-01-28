 import 'package:flutter/material.dart';
   // الويدجت الخاصه بصفخه about the app
Widget buildPage({
    required String title,
    required List<String> description,
    required String imagePath,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              title,
              maxLines: 2,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 20),
          Image.asset(
            imagePath,
            height: 200,
          ),
          SizedBox(height: 35),
          ...description.map((text) => Center(
                child: Text(
                  text,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black54,
                  ),
                  textAlign: TextAlign.center,
                ),
              )),
        ],
      ),
    );
  }
