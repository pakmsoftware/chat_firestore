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

    /// List of firestore users
    required FirestorePagedList<FirestoreUser> userList,

    /// Used filters for users list
    required FirestoreUserFilterRequest filters,

    /// Used filters from filters page
    required FirestoreChatFilter uiFilters,

    /// Logged user from firestore
    FirestoreUser? user,
  }) = _FirebaseHomeState;
}
