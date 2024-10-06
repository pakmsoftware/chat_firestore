import 'package:flutter/material.dart';

/// Send message button
class FirestoreSendMessageButton extends StatelessWidget {
  const FirestoreSendMessageButton({
    required this.onTap,
    required this.isActive,
    super.key,
  });

  final VoidCallback onTap;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isActive ? Colors.blue : Colors.blue.shade200,
        ),
        child: const Icon(
          Icons.send,
          color: Colors.white,
        ),
      ),
    );
  }
}
