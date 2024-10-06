part of 'firestore_chat_page_cubit.dart';

@freezed
class FirestoreChatPageState with _$FirestoreChatPageState {
  factory FirestoreChatPageState({
    /// Is loading first page of chat objects
    required bool isLoadingData,

    /// Determines if Cubit is fetching more data from firestore
    required bool isFetchingMore,

    /// Chat list from firestore
    required FirestorePagedList<FirestoreChat> chats,

    /// Helper list of users used to get theirs ids for chat filtering
    required FirestorePagedList<FirestoreUser> filteredUsersHelperList,

    /// Filters used for chat collection (firstly for users)
    required FirestoreChatFilter filters,
  }) = _FirestoreChatPageState;
}
