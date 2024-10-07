import 'package:chat_firestore/features/firebase/presentation/home/widgets/firestore_user_avatar.dart';
import 'package:flutter/material.dart';

/// Group chat avatar -> first two chat users avatars (not logged user one)
class FirestoreGroupChatAvatar extends StatelessWidget {
  const FirestoreGroupChatAvatar({
    required this.avatars,
    super.key,
  });

  /// Chat users avatars. Assuming it's at least 2 elements list
  final List<String?> avatars;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 48,
      height: 48,
      child: Stack(
        alignment: AlignmentDirectional.bottomStart,
        children: [
          Positioned(
            right: 0,
            top: 0,
            child: FirestoreUserAvatar(
              diameter: 32,
              avatar: avatars[1],
            ),
          ),
          FirestoreUserAvatar(
            diameter: 30,
            avatar: avatars[0],
            borderWidth: 2,
          ),
        ],
      ),
    );
  }
}
