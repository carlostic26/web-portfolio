import 'package:flutter/material.dart';

class WebThemeData {
  static final ThemeData themeData = ThemeData(
    primaryColor: const Color.fromARGB(255, 36, 36, 36),
    colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
    useMaterial3: true,
    iconTheme: IconThemeData(
        color: Colors.white), // Establece el color de los iconos en blanco
  );
}
