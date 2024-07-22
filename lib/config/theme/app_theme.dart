import 'package:flutter/material.dart';

class AppTheme{
  ThemeData getTheme() => ThemeData(
    colorSchemeSeed: Colors.blue,
  );
}

class AppColors {
  static const Color defaultBlueColor = Color.fromARGB(255, 140, 164, 195);
  static const Color backgroundGreyColor = Color.fromARGB(255, 179, 179, 179);
  static const Color defaultGreyColor = Color.fromARGB(255, 152, 152, 152);
  static const Color salesGreyColor = Color.fromARGB(255, 209, 209, 209);
}