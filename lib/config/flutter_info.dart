import 'dart:io';

class FlutterInfo {
  static Future<String> getFlutterVersion() async {
    final pubspecLock = File('pubspec.lock');
    final lines = await pubspecLock.readAsLines();
    String version = '';

    for (var line in lines) {
      if (line.startsWith('  flutter:')) {
        version = line.split(':')[1].trim();
        break;
      }
    }

    return version;
  }
}
