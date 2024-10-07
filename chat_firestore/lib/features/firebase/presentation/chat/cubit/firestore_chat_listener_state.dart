part of 'firestore_chat_listener_cubit.dart';

@freezed
class FirestoreChatListenerState with _$FirestoreChatListenerState {
  factory FirestoreChatListenerState({
    /// Determines if received chat should be moved to top if it already exists on chat page
    required bool moveReceivedChatToTop,

    /// Newest message chat received
    FirestoreChat? receivedChat,
  }) = _FirestoreChatListenerState;
}
