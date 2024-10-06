import 'package:chat_firestore/features/firebase/domain/models/firestore_chat_user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'firestore_user.freezed.dart';
part 'firestore_user.g.dart';

/// User model for firestore /users collection
@freezed
class FirestoreUser with _$FirestoreUser {
  factory FirestoreUser({
    /// ID of user
    required String id,

    /// First name of user
    required String name,

    /// Last name of user
    required String surname,

    /// When user was created in firestore
    required DateTime createdDate,

    /// Full name in lowercase used for autocomplete search
    String? fullNameLower,

    /// Path to firebase storage avatar file
    String? avatar,

    /// User's age
    int? age,

    /// User's height in centimeters
    int? height,
  }) = _FirestoreUser;

  factory FirestoreUser.fromJson(Map<String, dynamic> json) =>
      _$FirestoreUserFromJson(json);

  FirestoreUser._();

  /// [name] + [surname]
  String get fullName => '$name $surname';

  FirestoreChatUser toChatUser() {
    return FirestoreChatUser(
      id: id,
      name: name,
      surname: surname,
      avatar: avatar,
    );
  }
}
