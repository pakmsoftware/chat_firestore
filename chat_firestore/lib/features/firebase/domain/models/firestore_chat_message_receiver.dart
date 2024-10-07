import 'package:freezed_annotation/freezed_annotation.dart';

part 'firestore_chat_message_receiver.freezed.dart';

/// Single chat message receivers information -> if they were read by them or not
@freezed
class FirestoreChatMessageReceiver with _$FirestoreChatMessageReceiver {
  factory FirestoreChatMessageReceiver({
    /// User UUID
    required String userId,

    /// Flag that determines if message was read by [userId]
    required bool isRead,
  }) = _FirestoreChatMessageReceiver;

  factory FirestoreChatMessageReceiver.fromJson(Map<String, dynamic> json) =>
      _$FirestoreChatMessageReceiverFromJson(json);
}
