import 'package:flutter/material.dart';

class AppStyles {
  static final cardDecorationStyle = BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.03),
        spreadRadius: 5,
        blurRadius: 10,
      )
    ],
    color: Colors.white,
  );
}
