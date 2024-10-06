/// Model to login by email and password to Firebase
class FirebaseLoginRequest {
  FirebaseLoginRequest({
    required this.email,
    required this.password,
  });

  /// Email
  final String email;

  /// Password
  final String password;
}
