import 'package:flutter/foundation.dart';

class AppLogger {
  AppLogger._();
  
  static void log(String pageName, String debugMessage) {
    if (kDebugMode) {
      debugPrint('-- $pageName: $debugMessage');
    }
  }

  static void buildLog(String pageName) {
    if (kDebugMode) {
      debugPrint('--🏗️ $pageName: Build çalıştı');
    }
  }
}
