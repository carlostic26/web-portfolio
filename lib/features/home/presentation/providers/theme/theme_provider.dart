import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:web_portfolio/config/theme/theme.dart';

final themeProvider = StateNotifierProvider<ThemeNotifier, WebThemeData>((ref) {
  return ThemeNotifier();
});

class ThemeNotifier extends StateNotifier<WebThemeData> {
  ThemeNotifier() : super(WebThemeData());
}
