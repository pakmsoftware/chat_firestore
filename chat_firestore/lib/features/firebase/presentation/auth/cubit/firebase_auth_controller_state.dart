part of 'firebase_auth_controller_cubit.dart';

@freezed
class FirebaseAuthControllerState with _$FirebaseAuthControllerState {
  factory FirebaseAuthControllerState({
    /// Is loading auth data -> page initialization
    required bool isLoadingAuthData,

    /// Logged user from Firebase
    User? loggedUser,

    /// Logged user custom claims
    Map<String, dynamic>? loggedUserCustomClaims,
  }) = _FirebaseAuthControllerState;
}
