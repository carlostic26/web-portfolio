import 'package:flutter_dotenv/flutter_dotenv.dart';

class Enviroment {
  static String envSupabaseDbUrl = dotenv.env['envSupabaseDbUrl'] ?? 'no-url';
  static String apiKeySupabase = dotenv.env['apiKeySupabase'] ?? 'no-key ';
}
