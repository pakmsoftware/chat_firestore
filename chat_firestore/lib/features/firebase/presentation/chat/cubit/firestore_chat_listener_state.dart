part of 'firestore_chat_listener_cubit.dart';

@freezed
class FirestoreChatListenerState with _$FirestoreChatListenerState {
  factory FirestoreChatListenerState({
    /// Newest message chat received
    FirestoreChat? receivedChat,
  }) = _FirestoreChatListenerState;
}
