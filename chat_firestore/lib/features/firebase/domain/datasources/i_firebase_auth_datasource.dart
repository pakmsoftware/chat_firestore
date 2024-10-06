import 'package:chat_firestore/features/firebase/domain/models/firebase_login_request.dart';
import 'package:firebase_auth/firebase_auth.dart';

/// Interface for firebase auth login/registration
abstract class IFirebaseAuthDatasource {
  /// Signs in by email and password
  Future<User?> signInWithEmail(FirebaseLoginRequest request);

  /// Registers user with email and password
  Future<User?> registerWithEmail(FirebaseLoginRequest request);

  /// Sends email verification to [user]
  Future<void> sendEmailVerification(User user);

  /// Stream for firebase auth state changes
  Stream<User?> authStateChanges();

  /// Stream for firebase auth user state changes
  Stream<User?> userStateChanges();

  /// Signs out from firebase
  Future<void> signOut();

  /// Sets Firebase instance locale
  Future<void> setLocale(String locale);

  /// Reloads logged user from firebase - used to check if email has been verified
  Future<User?> reloadUser();
}
