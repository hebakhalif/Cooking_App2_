import 'package:flutter/material.dart';

class Customtextfield extends StatelessWidget {
  final TextEditingController? controller;
  final String? hintText;
  final bool obscureText;
  final IconData? icon;
  final TextInputType keyboardType;

  const Customtextfield({
    super.key,
    this.controller,
    this.hintText,
    required this.obscureText,
    this.icon,
    required this.keyboardType,
  });
  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: controller,
        keyboardType: keyboardType,
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: hintText,
          // ignore: unnecessary_null_comparison
          suffixIcon: Icon != null ? Icon(icon) : null,
          filled: true,
          fillColor: const Color.fromARGB(255, 239, 234, 234),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            borderSide: BorderSide.none,
          ),
        ));
  }
}
