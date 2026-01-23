import 'package:flutter/foundation.dart';

extension LoggerExtension on Object {
  void appLog(String pageName, String debugMessage) {
    if (kDebugMode) {
      debugPrint('-- $pageName: $debugMessage');
    }
  }

  void buildLog(String pageName) {
    if (kDebugMode) {
      debugPrint('--🏗️ $pageName: Build çalıştı');
    }
  }
}
