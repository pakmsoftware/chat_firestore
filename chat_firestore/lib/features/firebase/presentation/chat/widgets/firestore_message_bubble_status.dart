import 'package:chat_firestore/features/firebase/domain/models/firestore_chat_message.dart';
import 'package:chat_firestore/features/firebase/presentation/home/widgets/firestore_user_avatar.dart';
import 'package:flutter/widgets.dart';

/// Status of last chat sent message - either text sending/sent or if it was read by users
class FirestoreMessageBubbleStatus extends StatelessWidget {
  const FirestoreMessageBubbleStatus({
    required this.message,
    required this.readReceiverAvatars,
    super.key,
  });

  final FirestoreChatMessage message;

  /// Avatars of receivers that have read messages
  final List<String?> readReceiverAvatars;

  @override
  Widget build(BuildContext context) {
    // Show just text if noone has read the message yet
    if (readReceiverAvatars.isEmpty) {
      return Text(message.status.name);
    }

    // Otherwise show avatars of users that read the message
    return Padding(
      padding: const EdgeInsets.only(top: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: List.generate(
          readReceiverAvatars.length,
          (index) => Padding(
            padding: const EdgeInsets.only(left: 4),
            child: FirestoreUserAvatar(
              avatar: readReceiverAvatars[index],
              diameter: 20,
            ),
          ),
        ),
      ),
    );
  }
}
