import 'dart:async';

import 'package:chat_firestore/features/firebase/domain/repositories/i_firebase_auth_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'firebase_verify_email_state.dart';
part 'firebase_verify_email_cubit.freezed.dart';

/// Cubit controlling email verification page
class FirebaseVerifyEmailCubit extends Cubit<FirebaseVerifyEmailState> {
  FirebaseVerifyEmailCubit(this._authRepository)
      : super(FirebaseVerifyEmailState(
          isSendingEmail: false,
        ));

  final IFirebaseAuthRepository _authRepository;

  Timer? timer;

  @override
  Future<void> close() {
    timer?.cancel();
    return super.close();
  }

  /// Page initialization -> send email verification on start
  void init(User? user) {
    emit(state.copyWith(loggedUser: user));

    // send email verification
    if (user != null && !user.emailVerified) {
      resendEmailVerification();

      // After sending email, create timer that checks every 3 seconds if user has verified email
      timer = Timer.periodic(const Duration(seconds: 3), (timer) {
        _authRepository.reloadUser();
      });
    }
  }

  /// Resends email verification
  void resendEmailVerification() {
    if (state.loggedUser != null) {
      emit(state.copyWith(isSendingEmail: true));
      _authRepository.sendEmailVerification(state.loggedUser!);
      emit(state.copyWith(isSendingEmail: false));
    }
  }
}
