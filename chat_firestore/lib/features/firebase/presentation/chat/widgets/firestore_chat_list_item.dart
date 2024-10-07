import 'package:chat_firestore/core/router/app_router.dart';
import 'package:chat_firestore/core/router/app_router.gr.dart';
import 'package:chat_firestore/features/firebase/domain/models/firestore_chat.dart';
import 'package:chat_firestore/features/firebase/presentation/chat/widgets/firestore_group_chat_avatar.dart';
import 'package:chat_firestore/features/firebase/presentation/home/widgets/firestore_user_avatar.dart';
import 'package:chat_firestore/core/di/injection_container.dart';
import 'package:flutter/material.dart';

/// Chat list single item -> avatar, name, last message and last message date information
class FirestoreChatListItem extends StatelessWidget {
  const FirestoreChatListItem(
      {required this.chat, required this.isRead, super.key});

  /// Single firestore chat
  final FirestoreChat chat;

  /// Is chat last message read by user
  final bool isRead;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>
          sl<AppRouter>().push(FirestoreChatConversationRoute(chat: chat)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          children: [
            // Avatar
            if (chat.isGroupChat)
              FirestoreGroupChatAvatar(
                avatars: chat.chatAvatars,
              )
            else
              FirestoreUserAvatar(
                avatar: chat.chatAvatar,
                diameter: 48,
              ),
            const SizedBox(width: 8),

            // Chat name / Last message
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Chat title
                  Text(
                    chat.chatName,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  // Last message
                  Text(
                    chat.lastMsgText,
                    style: TextStyle(
                      fontWeight: !isRead ? FontWeight.bold : FontWeight.normal,
                      fontSize: !isRead ? 16 : 14,
                    ),
                    maxLines: 1,
                  ),
                ],
              ),
            ),

            // Date
            Text(
              chat.lastMsgDateText ?? '',
              style: TextStyle(
                fontWeight: !isRead ? FontWeight.bold : FontWeight.normal,
                fontSize: !isRead ? 16 : 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
