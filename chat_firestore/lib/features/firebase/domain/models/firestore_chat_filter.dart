import 'package:chat_firestore/features/firebase/domain/models/firestore_user.dart';
import 'package:chat_firestore/features/firebase/domain/models/firestore_user_filter_request.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'firestore_chat_filter.freezed.dart';

/// Filters used on chat filtering
@freezed
class FirestoreChatFilter with _$FirestoreChatFilter {
  factory FirestoreChatFilter({
    /// Chat users
    @Default([]) List<FirestoreUser> users,

    /// Min age of chat users
    int? minAge,

    /// Max age of chat users
    int? maxAge,
  }) = _FirestoreChatFilter;

  FirestoreChatFilter._();

  factory FirestoreChatFilter.empty() {
    return FirestoreChatFilter();
  }

  FirestoreUserFilterRequest toUserFilterRequest() {
    return FirestoreUserFilterRequest(
      minAge: minAge,
      maxAge: maxAge,
    );
  }

  bool get anyFiltersUsed =>
      users.isNotEmpty || minAge != null || maxAge != null;
}
