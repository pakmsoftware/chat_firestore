import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';

/// Configuration class for error handling in Crashlytics
class FlutterErrorConfig {
  /// Setup Flutter errors in Crashlytics on app startup
  static void init() {
    // Do not log errors if in debug mode
    if (kDebugMode) {
      return;
    }
    FlutterError.onError = (error) {
      FirebaseCrashlytics.instance.recordFlutterFatalError(error);
    };
  }
}
