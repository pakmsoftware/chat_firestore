import 'package:chat_firestore/core/di/injection_container.dart';
import 'package:chat_firestore/core/helper/datetime_extension.dart';
import 'package:chat_firestore/core/helper/list_extension.dart';
import 'package:chat_firestore/features/firebase/domain/models/firestore_chat_message.dart';
import 'package:chat_firestore/features/firebase/domain/models/firestore_chat_message_receiver.dart';
import 'package:chat_firestore/features/firebase/domain/models/firestore_chat_user.dart';
import 'package:chat_firestore/features/firebase/presentation/auth/cubit/firebase_auth_controller_cubit.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'firestore_chat.freezed.dart';
part 'firestore_chat.g.dart';

/// Chat doc model for chats collection
@freezed
class FirestoreChat with _$FirestoreChat {
  factory FirestoreChat({
    /// UUID
    required String id,

    /// Chat users
    @JsonKey(toJson: _mapUsers) required List<FirestoreChatUser> users,

    /// Chat user IDs - used to filter out chats without logged user for new messages listener
    required List<String> userIds,

    /// Number of elements in [userIds] list
    int? userIdsCount,

    /// Last message in chat
    @JsonKey(toJson: _mapLastMsg) FirestoreChatMessage? lastMsg,

    /// Last message date to order by DESC by default
    DateTime? lastMsgTimestamp,

    /// Custom name for group chats
    String? name,
  }) = _FirestoreChat;

  factory FirestoreChat.fromJson(Map<String, dynamic> json) =>
      _$FirestoreChatFromJson(json);

  FirestoreChat._();

  /// Chat receivers -> chat users excluding logged user
  List<FirestoreChatUser> get receivers {
    final userId =
        sl<FirebaseAuthControllerCubit>().state.loggedUser?.uid ?? '';
    return users.where((e) => e.id != userId).toList();
  }

  /// Gets chat shown name on list or details
  String get chatName => name ?? receivers.map((e) => e.fullName).join(', ');

  /// Private chat avatar
  String? get chatAvatar => receivers.first.avatar;

  /// Last msg date
  String? get lastMsgDateText => lastMsgTimestamp != null
      ? (DateTime.timestamp().isTheSameDay(lastMsgTimestamp!)
          ? DateFormat('HH:mm').format(lastMsgTimestamp!.toLocal())
          : DateFormat('dd-MM HH:mm').format(lastMsgTimestamp!.toLocal()))
      : '';

  /// Gets message sender avatar based on message [senderId]
  String? getMessageSenderAvatar(String senderId) {
    return users.firstWhereOrNull((u) => u.id == senderId)?.avatar;
  }

  /// Determines if logged user has read the last message of chat
  bool get isLastMsgRead {
    // Assume for non last message it is treated as read
    if (lastMsg == null) {
      return true;
    }

    // check receivers isRead flags of [lastMsg]
    final userId =
        sl<FirebaseAuthControllerCubit>().state.loggedUser?.uid ?? '';
    final receiver =
        lastMsg?.receivers.firstWhereOrNull((e) => e.userId == userId);
    return receiver?.isRead ?? true;
  }

  /// Gets avatars of [receivers] that have read the message
  List<String?> getReadReceiverAvatars(
      List<FirestoreChatMessageReceiver> receivers) {
    final readReceiversId =
        receivers.where((e) => e.isRead).map((e) => e.userId);
    final readReceiversAvatar = users
        .where((e) => readReceiversId.contains(e.id))
        .map((e) => e.avatar)
        .toList();
    return readReceiversAvatar;
  }
}

List<Map<String, dynamic>> _mapUsers(List<FirestoreChatUser> users) {
  return users.map((e) => e.toJson()).toList();
}

Map<String, dynamic>? _mapLastMsg(FirestoreChatMessage? lastMsg) {
  return lastMsg?.toJson();
}
