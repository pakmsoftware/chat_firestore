import 'package:chat_firestore/features/firebase/domain/datasources/i_firebase_auth_datasource.dart';
import 'package:chat_firestore/features/firebase/domain/models/firebase_login_request.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthDatasource extends IFirebaseAuthDatasource {
  @override
  Future<User?> registerWithEmail(FirebaseLoginRequest request) async {
    final credentials =
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: request.email,
      password: request.password,
    );
    return credentials.user;
  }

  @override
  Future<void> sendEmailVerification(User user) async {
    return user.sendEmailVerification();
  }

  @override
  Future<User?> signInWithEmail(FirebaseLoginRequest request) async {
    final credentials = await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: request.email,
      password: request.password,
    );

    return credentials.user;
  }

  @override
  Stream<User?> authStateChanges() {
    return FirebaseAuth.instance.authStateChanges();
  }

  @override
  Future<void> signOut() {
    return FirebaseAuth.instance.signOut();
  }

  @override
  Future<void> setLocale(String locale) {
    return FirebaseAuth.instance.setLanguageCode(locale);
  }

  @override
  Stream<User?> userStateChanges() {
    return FirebaseAuth.instance.userChanges();
  }

  @override
  Future<User?> reloadUser() async {
    // Firstly reload the user
    await FirebaseAuth.instance.currentUser?.reload();
    // Then return refreshed user
    return FirebaseAuth.instance.currentUser;
  }
}
