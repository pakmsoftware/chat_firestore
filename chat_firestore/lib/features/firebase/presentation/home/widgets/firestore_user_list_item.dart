import 'package:chat_firestore/core/router/app_router.dart';
import 'package:chat_firestore/core/router/app_router.gr.dart';
import 'package:chat_firestore/features/firebase/domain/models/firestore_user.dart';
import 'package:chat_firestore/features/firebase/presentation/home/cubit/firebase_home_cubit.dart';
import 'package:chat_firestore/features/firebase/presentation/home/widgets/firestore_chat_button.dart';
import 'package:chat_firestore/features/firebase/presentation/home/widgets/firestore_user_avatar.dart';
import 'package:chat_firestore/core/di/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Single item of firestore user document from users collection
class FirerstoreUserListItem extends StatelessWidget {
  const FirerstoreUserListItem({required this.user, super.key});

  /// User from firestore
  final FirestoreUser user;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => sl<AppRouter>().push(FirestoreUserDetailsRoute(user: user)),
      child: Row(
        children: [
          // Avatar
          FirestoreUserAvatar(
            avatar: user.avatar,
            diameter: 32,
          ),
          const SizedBox(width: 12),

          // Name and surname
          Expanded(
            child: Text(
              user.fullName,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),

          // Chat Icon
          FirestoreChatButton(
            onTap: () => sl<AppRouter>().push(
              FirestoreChatConversationRoute(
                users: [
                  user,
                  if (context.read<FirebaseHomeCubit>().state.user != null)
                    context.read<FirebaseHomeCubit>().state.user!,
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
