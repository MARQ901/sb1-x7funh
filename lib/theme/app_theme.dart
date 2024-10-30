import 'package:flutter/material.dart';

class AppTheme {
  static const primaryPurple = Color(0xFF6B4EFF);
  static const darkBlue = Color(0xFF1E2D3D);
  
  static final ThemeData lightTheme = ThemeData(
    primaryColor: primaryPurple,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
      elevation: 0,
      iconTheme: IconThemeData(color: darkBlue),
      titleTextStyle: TextStyle(
        color: darkBlue,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
    colorScheme: ColorScheme.fromSwatch().copyWith(
      primary: primaryPurple,
      secondary: darkBlue,
    ),
  );
}