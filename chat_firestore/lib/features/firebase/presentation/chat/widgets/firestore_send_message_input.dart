import 'package:chat_firestore/features/firebase/presentation/chat/cubit/firestore_chat_conversation_cubit.dart';
import 'package:chat_firestore/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Text input for sending a text message to other user
class FirestoreSendMessageInput extends StatefulWidget {
  const FirestoreSendMessageInput({super.key});

  @override
  State<FirestoreSendMessageInput> createState() =>
      _FirestoreSendMessageInputState();
}

class _FirestoreSendMessageInputState extends State<FirestoreSendMessageInput> {
  final TextEditingController controller = TextEditingController();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<FirestoreChatConversationCubit,
        FirestoreChatConversationState>(
      listenWhen: (p, c) => p.messageToSend != c.messageToSend,
      listener: (context, state) {
        if (state.messageToSend == null) {
          controller.text = '';
        }
      },
      child: TextFormField(
        maxLines: 5,
        minLines: 1,
        keyboardType: TextInputType.multiline,
        controller: controller,
        decoration: InputDecoration(
          label: Text(S.current.writeMessage),
          floatingLabelBehavior: FloatingLabelBehavior.never,
          isCollapsed: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          contentPadding: const EdgeInsets.all(12),
        ),
        onChanged: (value) =>
            context.read<FirestoreChatConversationCubit>().setMessage(value),
      ),
    );
  }
}
