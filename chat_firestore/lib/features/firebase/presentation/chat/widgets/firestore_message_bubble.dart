import 'package:chat_firestore/features/firebase/domain/models/firestore_chat_message.dart';
import 'package:chat_firestore/features/firebase/presentation/chat/widgets/firestore_message_bubble_status.dart';
import 'package:chat_firestore/features/firebase/presentation/home/widgets/firestore_user_avatar.dart';
import 'package:chat_firestore/features/firebase/utils/datetime_extension.dart';
import 'package:chat_firestore/features/firebase/utils/firestore_timestamp_extension.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

/// Message bubble
class FirestoreMessageBubble extends StatelessWidget {
  const FirestoreMessageBubble({
    required this.message,
    this.messagePrevious,
    this.messageNext,
    this.senderAvatar,
    this.showMsgStatus = false,
    this.readReceiverAvatars = const [],
    this.senderName,
    super.key,
  });

  /// Message to show
  final FirestoreChatMessage message;

  /// Previous message from list if exists
  final FirestoreChatMessage? messagePrevious;

  /// Next message on list if it exists
  final FirestoreChatMessage? messageNext;

  /// Avatar path of message sender. Not null only for other users messages
  final String? senderAvatar;

  /// Sender name. Not null only for other users messages in group chats
  final String? senderName;

  /// Determines if status is shown below message
  final bool showMsgStatus;

  /// Avatars of receivers that have read messages
  final List<String?> readReceiverAvatars;

  bool get isPreviousMessageTheSameSender =>
      messagePrevious?.senderId == message.senderId;

  /// Determines if current [message] is in the same 5 minute window as [messagePrevious] on chat
  bool get isPreviousMessageMoreThan5Minutes {
    if (messagePrevious == null) {
      return false;
    }
    return (message.timestamp?.toDateTime())?.isMoreThanMinutesDifference(
          pastDate: (messagePrevious!.timestamp as Timestamp).toDate(),
          minutes: 5,
        ) ??
        false;
  }

  /// Determines if current [message] is in the same day as [messagePrevious] on chat
  bool get isPreviousMessageTheSameDay {
    if (messagePrevious == null) {
      return false;
    }
    return (message.timestamp?.toDateTime())?.isTheSameDay(
          pastDate: (messagePrevious!.timestamp as Timestamp).toDate(),
        ) ??
        true;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment:
            message.isMine ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          if (!isPreviousMessageTheSameDay)
            Center(
              child: Text(
                message.dayText,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          Column(
            crossAxisAlignment: message.isMine
                ? CrossAxisAlignment.end
                : CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Row(
                  mainAxisAlignment: message.isMine
                      ? MainAxisAlignment.end
                      : MainAxisAlignment.start,
                  children: [
                    if (senderName != null) Text('${senderName ?? ''} '),
                    // Message time
                    if (isPreviousMessageMoreThan5Minutes ||
                        !isPreviousMessageTheSameSender)
                      Text(message.timeHourText),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: message.isMine
                    ? MainAxisAlignment.end
                    : MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  // Avatar shown for not mine messages
                  if (message.isMine)
                    const SizedBox(width: 32)
                  else ...[
                    // Show avatar of sender only on first message from group
                    if (!isPreviousMessageTheSameSender ||
                        isPreviousMessageMoreThan5Minutes)
                      FirestoreUserAvatar(
                        avatar: senderAvatar,
                        diameter: 32,
                      )
                    else
                      const SizedBox(width: 32),
                    const SizedBox(width: 8),
                  ],
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        // Bubble
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: message.isMine
                                ? Colors.blue
                                : Colors.grey.shade100,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Text(
                            message.content,
                            style: TextStyle(
                              color:
                                  message.isMine ? Colors.white : Colors.black,
                            ),
                          ),
                        ),

                        // Message status
                        if (showMsgStatus)
                          FirestoreMessageBubbleStatus(
                            message: message,
                            readReceiverAvatars: readReceiverAvatars,
                          ),
                      ],
                    ),
                  ),
                  if (!message.isMine) const SizedBox(width: 32),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
