import 'package:chat_firestore/core/app/type_aliases.dart';
import 'package:chat_firestore/core/error/repository_request_handler.dart';
import 'package:chat_firestore/features/firebase/domain/datasources/i_firebase_auth_datasource.dart';
import 'package:chat_firestore/features/firebase/domain/models/firebase_login_request.dart';
import 'package:chat_firestore/features/firebase/domain/repositories/i_firebase_auth_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthRepository extends IFirebaseAuthRepository {
  FirebaseAuthRepository(this.datasource);

  final IFirebaseAuthDatasource datasource;

  @override
  FutureFailable<User?> registerWithEmail(FirebaseLoginRequest request) {
    return RepositoryRequestHandler<User?>()(
      request: () => datasource.registerWithEmail(request),
    );
  }

  @override
  FutureFailable<void> sendEmailVerification(User user) {
    return RepositoryRequestHandler<void>()(
      request: () => datasource.sendEmailVerification(user),
    );
  }

  @override
  FutureFailable<User?> signInWithEmail(FirebaseLoginRequest request) {
    return RepositoryRequestHandler<User?>()(
      request: () => datasource.signInWithEmail(request),
    );
  }

  @override
  Stream<User?> authStateChanges() {
    return datasource.authStateChanges();
  }

  @override
  FutureFailable<void> signOut() {
    return RepositoryRequestHandler<void>()(
      request: datasource.signOut,
    );
  }

  @override
  FutureFailable<void> setLocale(String locale) {
    return RepositoryRequestHandler<void>()(
      request: () => datasource.setLocale(locale),
    );
  }

  @override
  Stream<User?> userStateChanges() {
    return datasource.userStateChanges();
  }

  @override
  FutureFailable<User?> reloadUser() {
    return RepositoryRequestHandler<User?>()(
      request: datasource.reloadUser,
    );
  }
}
