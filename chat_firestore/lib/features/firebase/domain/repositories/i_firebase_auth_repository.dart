import 'package:chat_firestore/core/app/type_aliases.dart';
import 'package:chat_firestore/features/firebase/domain/models/firebase_login_request.dart';
import 'package:firebase_auth/firebase_auth.dart';

/// Repository layer for firebase auth
abstract class IFirebaseAuthRepository {
  /// Signs in by email and password
  FutureFailable<User?> signInWithEmail(FirebaseLoginRequest request);

  /// Registers user with email and password
  FutureFailable<User?> registerWithEmail(FirebaseLoginRequest request);

  /// Sends email verification to [user]
  FutureFailable<void> sendEmailVerification(User user);

  /// Stream for firebase auth state changes
  Stream<User?> authStateChanges();

  /// Stream for firebase auth user state changes
  Stream<User?> userStateChanges();

  /// Signs out from Firebase
  FutureFailable<void> signOut();

  /// Sets locale for FirebaseAuth instance
  FutureFailable<void> setLocale(String locale);

  /// Reloades logged in user
  FutureFailable<User?> reloadUser();
}
