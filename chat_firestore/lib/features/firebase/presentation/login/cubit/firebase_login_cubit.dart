import 'package:chat_firestore/core/helper/future_failable_extension.dart';
import 'package:chat_firestore/features/firebase/domain/models/firebase_login_request.dart';
import 'package:chat_firestore/features/firebase/domain/repositories/i_firebase_auth_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'firebase_login_state.dart';
part 'firebase_login_cubit.freezed.dart';

/// Firebase login page controller cubit
class FirebaseLoginCubit extends Cubit<FirebaseLoginState> {
  FirebaseLoginCubit(this.firebaseAuthRepository)
      : super(FirebaseLoginState(
          isSubmitting: false,
          submitSucccess: false,
          email: '',
          password: '',
        ));

  final IFirebaseAuthRepository firebaseAuthRepository;

  /// Sets email passed in login form
  void setEmail(String value) {
    emit(state.copyWith(email: value));
  }

  /// Sets password passed in login form
  void setPassword(String value) {
    emit(state.copyWith(password: value));
  }

  /// Login to firebase auth
  Future<void> login() async {
    emit(state.copyWith(isSubmitting: true));
    final response = (await firebaseAuthRepository.signInWithEmail(
      FirebaseLoginRequest(email: state.email, password: state.password),
    ))
        .getData();
    emit(state.copyWith(
      isSubmitting: false,
      submitSucccess: response != null,
    ));
  }

  /// Register new user in firebase auth
  Future<void> register() async {
    emit(state.copyWith(isSubmitting: true));
    final response = (await firebaseAuthRepository.registerWithEmail(
      FirebaseLoginRequest(email: state.email, password: state.password),
    ))
        .getData();
    emit(state.copyWith(
      isSubmitting: false,
      submitSucccess: response != null,
    ));
  }
}
