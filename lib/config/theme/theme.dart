import 'package:flutter/material.dart';
import 'package:web_portfolio/config/constants/colors.dart';

class WebThemeData {
  final bool isDark;

  WebThemeData({
    this.isDark = true,
  });

  ThemeData get theme => isDark
      ? ThemeData.dark().copyWith(
          scaffoldBackgroundColor: CustomColor.scaffoldBg,
          primaryColor: const Color.fromARGB(255, 36, 36, 36),
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.white,
            brightness: Brightness.dark,
            primary: const Color(0xffFFAF29),
          ),
          iconTheme: const IconThemeData(color: Colors.white),
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
        )
      : ThemeData.light().copyWith(
          colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.white,
            primary: const Color(0xffFFAF29),
          ),
        );

  WebThemeData copyWith({
    bool? isDark,
  }) {
    return WebThemeData(
      isDark: isDark ?? this.isDark,
    );
  }
}
