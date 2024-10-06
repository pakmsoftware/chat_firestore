part of 'firestore_chat_filter_page_cubit.dart';

@freezed
class FirestoreChatFilterPageState with _$FirestoreChatFilterPageState {
  factory FirestoreChatFilterPageState({
    /// Used filters
    required FirestoreChatFilter filters,
    required FirestorePagedList<FirestoreUser> users,
  }) = _FirestoreChatFilterPageState;
}
