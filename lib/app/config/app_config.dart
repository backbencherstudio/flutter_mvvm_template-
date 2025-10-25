import 'package:flutter/foundation.dart';

class AppConfig {
  
  static const String baseUrl = _isProduction
      ? 'https://api.yourapp.com'
      : 'https://staging-api.yourapp.com';

  static const String appVersion = '1.0.0';
  static const bool _isProduction = kReleaseMode;

  static const bool enableLogging = !kReleaseMode;
  static const bool enableMockData = false;

  /// Timeout durations
  static const Duration apiTimeout = Duration(seconds: 30);

  static const String appName = 'Flutter App';

  static String get environment => _isProduction ? 'Production' : 'Development';
}
