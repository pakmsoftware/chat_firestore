import 'package:chat_firestore/features/firebase/domain/models/firestore_user.dart';
import 'package:chat_firestore/features/firebase/presentation/home/widgets/firestore_user_avatar.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

/// Page with user details
@RoutePage()
class FirestoreUserDetailsPage extends StatelessWidget {
  const FirestoreUserDetailsPage({
    required this.user,
    super.key,
  });

  final FirestoreUser user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(user.fullName)),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Center(
            child: Column(
              children: [
                // Avatar
                FirestoreUserAvatar(
                  avatar: user.avatar,
                ),

                const SizedBox(height: 16),

                Text(
                  user.fullName,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
