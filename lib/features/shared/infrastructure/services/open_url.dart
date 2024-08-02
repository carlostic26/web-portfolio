import 'package:url_launcher/url_launcher.dart';

class OpenUrl {
  void openUrl({required String url}) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'No se pudo abrir el url $url';
    }
  }
}
