import 'package:chat_firestore/core/di/injection_container.dart';
import 'package:chat_firestore/features/firebase/domain/models/firestore_chat_message_receiver.dart';
import 'package:chat_firestore/features/firebase/domain/models/firestore_chat_message_status.dart';
import 'package:chat_firestore/features/firebase/presentation/auth/cubit/firebase_auth_controller_cubit.dart';
import 'package:chat_firestore/features/firebase/utils/firestore_timestamp_converter.dart';
import 'package:chat_firestore/features/firebase/utils/firestore_timestamp_extension.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'firestore_chat_message.freezed.dart';
part 'firestore_chat_message.g.dart';

/// Firestore chat conversation single message model
@freezed
class FirestoreChatMessage with _$FirestoreChatMessage {
  factory FirestoreChatMessage({
    /// UUID
    required String id,

    /// Message text content
    required String content,

    /// Sender UUID
    required String senderId,

    /// Chat UUID
    required String chatId,

    /// Message receivers
    @JsonKey(toJson: _mapReceivers)
    required List<FirestoreChatMessageReceiver> receivers,

    /// Status of message. Valid and shown only for message sender
    @Default(FirestoreChatMessageStatus.sent)
    @JsonKey(includeToJson: false, includeFromJson: false)
    FirestoreChatMessageStatus status,

    /// Date of message
    @FirestoreTimestampConverter() Object? timestamp,
  }) = _FirestoreChatMessage;

  factory FirestoreChatMessage.fromJson(Map<String, dynamic> json) =>
      _$FirestoreChatMessageFromJson(json);

  FirestoreChatMessage._();

  DateTime? get timestampDate => timestamp?.toDateTime();

  bool get isMine =>
      sl<FirebaseAuthControllerCubit>().state.loggedUser?.uid == senderId;

  /// Hour and minute time of message
  String get timeHourText => timestampDate != null
      ? DateFormat('HH:mm').format(timestampDate!.toLocal())
      : '';

  /// Day and month of message
  String get dayText => timestampDate != null
      ? DateFormat('dd.MM').format(timestampDate!.toLocal())
      : '';
}

List<Map<String, dynamic>> _mapReceivers(
    List<FirestoreChatMessageReceiver> receivers) {
  return receivers.map((e) => e.toJson()).toList();
}
