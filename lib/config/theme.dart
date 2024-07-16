import 'package:flutter/material.dart';

class WebThemeData {
  static final ThemeData themeData = ThemeData(
    primaryColor: const Color.fromARGB(255, 36, 36, 36),
    colorScheme: ColorScheme.fromSeed(
      seedColor: Colors.white,
      brightness: Brightness.dark, // This helps set a dark theme
    ),
    useMaterial3: true,
    iconTheme: const IconThemeData(color: Colors.white),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: Colors.white),
      bodyMedium: TextStyle(color: Colors.white),
      titleMedium: TextStyle(color: Colors.white),
      // Add other text styles as needed
    ),
  );
}
