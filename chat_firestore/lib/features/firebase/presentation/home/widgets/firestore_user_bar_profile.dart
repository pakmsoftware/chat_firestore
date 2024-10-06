import 'package:chat_firestore/core/router/app_router.dart';
import 'package:chat_firestore/core/router/app_router.gr.dart';
import 'package:chat_firestore/features/firebase/domain/models/firestore_user.dart';
import 'package:chat_firestore/features/firebase/presentation/home/widgets/firestore_user_avatar.dart';
import 'package:chat_firestore/core/di/injection_container.dart';
import 'package:flutter/material.dart';

/// User avatar and name shown on app bar
class FirestoreUserBarProfile extends StatelessWidget {
  const FirestoreUserBarProfile({super.key, this.user});

  /// Loaded from firestore user
  final FirestoreUser? user;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: InkWell(
        onTap: () {
          if (user == null) {
            return;
          }
          // Go for user profile edit page
          sl<AppRouter>().push(
            FirestoreEditUserRoute(user: user),
          );
        },
        child: Row(
          children: [
            FirestoreUserAvatar(
              avatar: user?.avatar,
              diameter: 32,
            ),
            const SizedBox(width: 8),
            Text(user?.fullName ?? ''),
          ],
        ),
      ),
    );
  }
}
