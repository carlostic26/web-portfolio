import 'package:flutter/material.dart';

class WebThemeData {
  static final ThemeData themeData = ThemeData(
    primaryColor: const Color.fromARGB(255, 36, 36, 36),
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.white,
      brightness: Brightness.dark,
      primary: const Color(0xffFFAF29),
    ),
    useMaterial3: true,
    iconTheme: const IconThemeData(color: Colors.white),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: Colors.white),
      bodyMedium: TextStyle(color: Colors.white),
      titleMedium: TextStyle(color: Colors.white),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xffFFAF29),
        foregroundColor: Colors.white, // Text color
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: const Color(0xffFFAF29),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: const Color(0xffFFAF29),
        side: const BorderSide(color: Color(0xffFFAF29)),
      ),
    ),
  );
}
