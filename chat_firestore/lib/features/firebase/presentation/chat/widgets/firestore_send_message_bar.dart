import 'package:chat_firestore/features/firebase/presentation/chat/cubit/firestore_chat_conversation_cubit.dart';
import 'package:chat_firestore/features/firebase/presentation/chat/widgets/firestore_send_message_button.dart';
import 'package:chat_firestore/features/firebase/presentation/chat/widgets/firestore_send_message_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Bar with text input and send message button
class FirestoreSendMessageBar extends StatelessWidget {
  const FirestoreSendMessageBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        children: [
          const Expanded(child: FirestoreSendMessageInput()),
          const SizedBox(width: 12),
          BlocBuilder<FirestoreChatConversationCubit,
              FirestoreChatConversationState>(
            builder: (context, state) {
              return FirestoreSendMessageButton(
                onTap: () => context
                    .read<FirestoreChatConversationCubit>()
                    .sendMessage(),
                isActive: !state.isSendingMessage,
              );
            },
          ),
        ],
      ),
    );
  }
}
