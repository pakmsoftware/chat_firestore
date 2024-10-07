import 'package:chat_firestore/features/firebase/domain/models/firestore_chat.dart';
import 'package:chat_firestore/features/firebase/domain/models/firestore_user.dart';
import 'package:chat_firestore/features/firebase/presentation/auth/cubit/firebase_auth_controller_cubit.dart';
import 'package:chat_firestore/features/firebase/presentation/chat/cubit/firestore_chat_conversation_cubit.dart';
import 'package:chat_firestore/features/firebase/presentation/chat/widgets/firestore_message_bubble.dart';
import 'package:chat_firestore/features/firebase/presentation/chat/widgets/firestore_send_message_bar.dart';
import 'package:chat_firestore/features/firebase/presentation/home/widgets/firestore_paged_list_view.dart';
import 'package:chat_firestore/core/di/injection_container.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Page with single chat conversation
@RoutePage()
class FirestoreChatConversationPage extends StatelessWidget {
  const FirestoreChatConversationPage({
    super.key,
    this.chat,
    this.users,
    this.chatName,
  });

  /// Chat -> from chat list page
  final FirestoreChat? chat;

  /// Chat users -> from users page
  final List<FirestoreUser>? users;

  /// Chat name for group chat
  final String? chatName;

  String get chatTitle {
    String? result = chatName ?? chat?.chatName;
    if (result == null) {
      final loggedUserId =
          sl<FirebaseAuthControllerCubit>().state.loggedUser?.uid ?? '';
      result = users
              ?.where((e) => e.id != loggedUserId)
              .map((e) => e.fullName)
              .join(', ') ??
          '';
    }

    return result;
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<FirestoreChatConversationCubit>()
        ..init(
          chat: chat,
          users: users,
          chatName: chatName,
        ),
      child: Builder(builder: (context) {
        return BlocBuilder<FirestoreChatConversationCubit,
            FirestoreChatConversationState>(
          builder: (context, state) {
            return SafeArea(
              top: false,
              child: Scaffold(
                appBar: AppBar(
                  title: Text(chatTitle),
                  surfaceTintColor: Colors.transparent,
                ),
                body: state.isLoadingData
                    ? const Center(
                        child: CircularProgressIndicator.adaptive(),
                      )
                    : Column(
                        children: [
                          // Messages list
                          Expanded(
                            child: FirestorePagedListView(
                              isReversed: true,
                              list: state.messages,
                              listItemBuilder: (message, index) =>
                                  FirestoreMessageBubble(
                                message: message,
                                // Previous (older) message on reversed list means next indexed message on list
                                messagePrevious:
                                    index < state.messages.data.length - 1
                                        ? state.messages.data[index + 1]
                                        : null,
                                // Next message (newer) message on reversed list means previous indexed message on list
                                messageNext: index > 0
                                    ? state.messages.data[index - 1]
                                    : null,
                                // Show message status only on last message
                                showMsgStatus: index == 0 && message.isMine,
                                // Avatar of sender message shown for receiver
                                senderAvatar:
                                    state.chat?.getMessageSenderAvatar(
                                  message.senderId,
                                ),
                                senderName: !message.isMine &&
                                        (state.chat?.isGroupChat ?? false)
                                    ? state.chat
                                        ?.getMessageSenderName(message.senderId)
                                    : null,
                                // Avatars of users that have read message
                                readReceiverAvatars: state.chat
                                        ?.getReadReceiverAvatars(
                                            message.receivers) ??
                                    [],
                              ),
                              fetchMoreCallback: () => context
                                  .read<FirestoreChatConversationCubit>()
                                  .fetchMoreMsg(),
                              separator: const SizedBox(height: 8),
                              fetchMoreThreshold: 50,
                              pullToRefreshCallback: () async {
                                return;
                              },
                            ),
                          ),

                          // Divider
                          const Divider(),

                          // Send message bar
                          const FirestoreSendMessageBar(),
                        ],
                      ),
              ),
            );
          },
        );
      }),
    );
  }
}
