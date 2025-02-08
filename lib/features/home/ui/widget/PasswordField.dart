import 'package:cooking_app_flutter/core/themes/app_colors.dart';
import 'package:flutter/material.dart';

class Passwordfield extends StatefulWidget {
  //const Passwordfield({super.key});
  final TextEditingController controller;

  const Passwordfield({super.key, required this.controller});
  @override
  _PasswordfieldStates createState() => _PasswordfieldStates();
}

class _PasswordfieldStates extends State<Passwordfield> {
  bool _isObsured = true; // تعريف متغير لتحديد حالة الباسورد

  void _togglePasswordVisibility() {
    setState(() {
      _isObsured = !_isObsured;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      obscureText: _isObsured,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.kScaffoldDarkColor,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          borderSide: BorderSide.none,
        ),
        suffixIcon: IconButton(
          icon: Icon(
            _isObsured ? Icons.visibility_off : Icons.visibility,
          ),
          onPressed: _togglePasswordVisibility,
        ),
      ),
    );
  }
}
