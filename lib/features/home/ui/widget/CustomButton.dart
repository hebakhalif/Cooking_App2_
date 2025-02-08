import 'package:flutter/material.dart';

class Custombutton extends StatelessWidget {
  final String text;
  final double width;
  final double height;
  final Color color;
  final Color? textColor;
  final VoidCallback onPressed;

  const Custombutton({
    super.key,
    required this.text,
    required this.width,
    required this.height,
    required this.color,
    required this.onPressed,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
