import 'package:flutter/material.dart';

/// Chat icon button that triggers to create a chat with one user
class FirestoreChatButton extends StatelessWidget {
  const FirestoreChatButton({required this.onTap, super.key});

  /// On button tap callback
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.blue,
        ),
        child: const Icon(
          Icons.chat_bubble_outline,
          size: 24,
          color: Colors.white,
        ),
      ),
    );
  }
}
