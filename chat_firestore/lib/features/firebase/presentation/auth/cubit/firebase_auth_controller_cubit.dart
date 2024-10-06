import 'dart:ui';

import 'package:chat_firestore/features/firebase/domain/repositories/i_firebase_auth_repository.dart';
import 'package:chat_firestore/features/firebase/utils/firebase_user_extension.dart';
import 'package:chat_firestore/core/di/injection_container.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:chat_firestore/core/helper/future_failable_extension.dart';

part 'firebase_auth_controller_state.dart';
part 'firebase_auth_controller_cubit.freezed.dart';

/// Central cubit controlling auth state changes for firebase
class FirebaseAuthControllerCubit extends Cubit<FirebaseAuthControllerState> {
  FirebaseAuthControllerCubit(this.repository)
      : super(FirebaseAuthControllerState(
          isLoadingAuthData: false,
        ));

  final IFirebaseAuthRepository repository;

  /// Initialize listener for auth changes
  Future<void> init() async {
    emit(state.copyWith(isLoadingAuthData: true));
    // Set firebase language to used localer
    await repository.setLocale(sl<Locale>(instanceName: 'locale').languageCode);
    final user = (await repository.reloadUser()).getData();
    if (user != null) {
      await changeUser(user);
    }

    // Listen for auth state changes
    repository.authStateChanges().listen(changeUser);
    // Listen for user changes
    repository.userStateChanges().listen(changeUser);

    emit(state.copyWith(isLoadingAuthData: false));
  }

  /// Sets current logged user to [user]
  Future<void> changeUser(User? user) async {
    final claims = await user?.getCustomClaims();
    emit(state.copyWith(
      loggedUser: user,
      loggedUserCustomClaims: claims,
    ));
  }
}
