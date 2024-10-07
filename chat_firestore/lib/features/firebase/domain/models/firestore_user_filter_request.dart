import 'package:freezed_annotation/freezed_annotation.dart';

part 'firestore_user_filter_request.freezed.dart';

/// Filter request for users collection
@freezed
class FirestoreUserFilterRequest with _$FirestoreUserFilterRequest {
  factory FirestoreUserFilterRequest({
    /// Query for name and surname. Works like .startsWith for user's full name (name OR surname)
    String? nameQuery,

    /// Minimal age for users inclusive
    int? minAge,

    /// Maximal age of users inclusive
    int? maxAge,
  }) = _FirestoreUserFilterRequest;

  factory FirestoreUserFilterRequest.fromJson(Map<String, dynamic> json) =>
      _$FirestoreUserFilterRequestFromJson(json);

  FirestoreUserFilterRequest._();

  factory FirestoreUserFilterRequest.empty() {
    return FirestoreUserFilterRequest();
  }
}
