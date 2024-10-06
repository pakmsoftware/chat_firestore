part of 'firebase_routing_manager_cubit.dart';

@freezed
class FirebaseRoutingManagerState with _$FirebaseRoutingManagerState {
  factory FirebaseRoutingManagerState({
    required bool reloadPage,
  }) = _FirebaseRoutingManagerState;
}
