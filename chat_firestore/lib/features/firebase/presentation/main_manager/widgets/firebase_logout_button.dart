import 'package:chat_firestore/generated/l10n.dart';
import 'package:flutter/material.dart';

/// Popup menu button to logout user from firebaser auth
class FirebaseLogoutButton extends StatelessWidget {
  const FirebaseLogoutButton({required this.onLogout, super.key});

  /// On logout tap function
  final VoidCallback onLogout;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: PopupMenuButton(
        iconSize: 32,
        color: Colors.white,
        itemBuilder: (context) => [
          PopupMenuItem(
            onTap: onLogout,
            child: Text(S.current.signOut),
          )
        ],
      ),
    );
  }
}
