import 'package:flutter_dotenv/flutter_dotenv.dart';

class Enviroment {
  static String envSupabaseDbUrl = dotenv.env['envSupabaseDbUrl'] ?? 'no-url';
  static String apiKeySupabase = dotenv.env['apiKeySupabase'] ?? 'no-key ';

  static String name = dotenv.env['nameDev'] ?? 'Name Developer';
  static String email = dotenv.env['emailDev'] ?? 'Name Developer';
  static String urlLinkedin = dotenv.env['urlLinkedinDev'] ?? 'URL linkedin';
  static String urlGithub = dotenv.env['urlGithubDev'] ?? 'Name Developer';
  static String urlFacebook = dotenv.env[' urlFacebookDev'] ?? 'Name Developer';
  static String urlInstagram =
      dotenv.env['urlInstagramDev'] ?? 'Name Developer';
  static String urlBlog = dotenv.env['urlBlogDev'] ?? 'Name Developer';
  static String urlImg = dotenv.env['urlImgDevDev'] ?? 'Name Developer';
  static String urlImgDash = dotenv.env['urlImgDashDev'] ?? 'Name Developer';
  static String iconFacebook =
      dotenv.env['iconFacebookDev'] ?? 'Name Developer';
  static String iconInstagram =
      dotenv.env['iconInstagramDev'] ?? 'Name Developer';
  static String iconLinkedin =
      dotenv.env['iconLinkedinDev'] ?? 'Name Developer';
  static String iconGithub = dotenv.env['iconGithubDev'] ?? 'Name Developer';
  static String flutterVersion =
      dotenv.env['flutterVersionDev'] ?? 'Name Developer';
}
