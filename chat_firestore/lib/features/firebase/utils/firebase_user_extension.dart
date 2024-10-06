import 'package:firebase_auth/firebase_auth.dart';

extension FirebaseUserExtension on User {
  /// Gets claims from Firebase User object Token
  Future<Map<String, dynamic>?> getCustomClaims() async {
    // Get the ID token with custom claims
    final idTokenResult = await this.getIdTokenResult(true);

    // Access the custom claims
    return idTokenResult.claims;
  }
}
