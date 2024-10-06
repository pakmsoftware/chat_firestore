part of 'firebase_verify_email_cubit.dart';

@freezed
class FirebaseVerifyEmailState with _$FirebaseVerifyEmailState {
  factory FirebaseVerifyEmailState({
    /// Is in process of sending email verification Link
    required bool isSendingEmail,

    /// Logged user from firebase auth
    User? loggedUser,
  }) = _FirebaseVerifyEmailState;
}
