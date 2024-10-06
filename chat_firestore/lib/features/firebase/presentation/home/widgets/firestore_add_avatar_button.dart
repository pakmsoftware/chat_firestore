import 'package:flutter/material.dart';

/// Add avatar button
class FirestoreAddAvatarButton extends StatelessWidget {
  const FirestoreAddAvatarButton({
    required this.addAvatarCallback,
    super.key,
  });

  final VoidCallback addAvatarCallback;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: addAvatarCallback,
      child: Container(
        width: 64,
        height: 64,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.grey.shade200,
        ),
        padding: const EdgeInsets.all(8),
        child: const Icon(
          Icons.add,
          size: 24,
        ),
      ),
    );
  }
}
