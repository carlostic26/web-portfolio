import 'package:flutter_dotenv/flutter_dotenv.dart';

class Enviroment {
  static String envSupabaseDbUrl = dotenv.env['envSupabaseDbUrl'] ?? 'no-url';
  static String apiKeySupabase = dotenv.env['apiKeySupabase'] ?? 'no-key ';

  static String name = dotenv.env['name'] ?? 'Name Developer';
  static String email = dotenv.env['email'] ?? 'Name Developer';
  static String urlLinkedin = dotenv.env['urlLinkedin'] ?? 'URL linkedin';
  static String urlGithub = dotenv.env['urlGithub'] ?? 'Name Developer';
  static String urlFacebook = dotenv.env[' urlFacebook'] ?? 'Name Developer';
  static String urlInstagram = dotenv.env['urlInstagram'] ?? 'Name Developer';
  static String urlBlog = dotenv.env['urlBlog'] ?? 'Name Developer';
  static String urlImg = dotenv.env['urlImg'] ?? 'Name Developer';
  static String urlImgDash = dotenv.env['urlImgDash'] ?? 'Name Developer';
  static String iconFacebook = dotenv.env['iconFacebook'] ?? 'Name Developer';
  static String iconInstagram = dotenv.env['iconInstagram'] ?? 'Name Developer';
  static String iconLinkedin = dotenv.env['iconLinkedin'] ?? 'Name Developer';
  static String iconGithub = dotenv.env['iconGithub'] ?? 'Name Developer';
  static String flutterVersion =
      dotenv.env['flutterVersion'] ?? 'Name Developer';
}
