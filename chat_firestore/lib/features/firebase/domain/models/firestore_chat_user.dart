import 'package:freezed_annotation/freezed_annotation.dart';

part 'firestore_chat_user.freezed.dart';

/// Single chat user model for firerstore
@freezed
class FirestoreChatUser with _$FirestoreChatUser {
  factory FirestoreChatUser({
    /// UUID
    required String id,

    /// First name
    required String name,

    /// Last name
    required String surname,

    /// Avatar URL
    String? avatar,
  }) = _FirestoreChatUser;

  factory FirestoreChatUser.fromJson(Map<String, dynamic> json) =>
      _$FirestoreChatUserFromJson(json);

  FirestoreChatUser._();

  /// [name] + [surname]
  String get fullName => '$name $surname';
}
