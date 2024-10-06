part of 'firestore_chat_conversation_cubit.dart';

@freezed
class FirestoreChatConversationState with _$FirestoreChatConversationState {
  const factory FirestoreChatConversationState({
    /// Loading messages on init
    required bool isLoadingData,

    /// Is fetching more messages
    required bool isFetchingMore,

    /// Is sending message
    required bool isSendingMessage,

    /// Paged list of messages
    required FirestorePagedList<FirestoreChatMessage> messages,

    /// Receiver ids
    required List<String> receiverIds,

    /// Loaded chat from firestore
    FirestoreChat? chat,

    /// Message content written in input
    String? messageToSend,
  }) = _FirestoreChatConversationState;
}
