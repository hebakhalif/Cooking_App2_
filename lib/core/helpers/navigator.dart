import 'package:flutter/material.dart';

extension NavigatorHelper on BuildContext{
  // محتاجه اسخدم هنا router
  void push (Widget widget){
    Navigator.of(this).push(
      MaterialPageRoute(builder: 
      (context) => widget,
      ),
    );
  }
  void pop (Widget widget){
    Navigator.of(this).pop();
  }

  void pushReplacement(Widget widget){
    Navigator.of(this).pushReplacement(
      MaterialPageRoute(builder: 
      (context) => widget,
      ),
    );
  } 
}