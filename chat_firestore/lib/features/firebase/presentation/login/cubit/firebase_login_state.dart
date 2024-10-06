part of 'firebase_login_cubit.dart';

@freezed
class FirebaseLoginState with _$FirebaseLoginState {
  factory FirebaseLoginState({
    /// Is logging in or is registering
    required bool isSubmitting,

    /// Login/Register success
    required bool submitSucccess,

    /// Form email
    required String email,

    /// Form password
    required String password,
  }) = _FirebaseLoginState;
}
