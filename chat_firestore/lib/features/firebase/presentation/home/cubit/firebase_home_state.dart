part of 'firebase_home_cubit.dart';

@freezed
class FirebaseHomeState with _$FirebaseHomeState {
  factory FirebaseHomeState({
    /// Is page initialization
    required bool isPageInit,

    /// Is loading initial first page data
    required bool isLoadingData,

    /// Is fetching more data on scrolling
    required bool isFetchingMoreData,

    /// Shows fill in data form for user that do not exist in firestore
    required bool showFillDataForm,

    /// Checkboxes next to users mode for creating a group caht
    required bool isSelectUsersMode,

    /// List of firestore users
    required FirestorePagedList<FirestoreUser> userList,

    /// Selected users for group chat
    required List<FirestoreUser> selectedUsersForGroupChat,

    /// Used filters for users list
    required FirestoreUserFilterRequest filters,

    /// Used filters from filters page
    required FirestoreChatFilter uiFilters,

    /// Logged user from firestore
    FirestoreUser? user,
  }) = _FirebaseHomeState;

  FirebaseHomeState._();

  /// Determines if [user] is selected for group chat
  bool isUserSelected(FirestoreUser user) {
    return selectedUsersForGroupChat.any((e) => e.id == user.id);
  }
}
