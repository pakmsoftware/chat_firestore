import 'package:auto_route/auto_route.dart';
import 'package:chat_firestore/core/di/injection_container.dart';
import 'package:chat_firestore/core/router/app_router.dart';
import 'package:chat_firestore/core/router/app_router.gr.dart';
import 'package:chat_firestore/features/firebase/domain/models/firestore_user.dart';
import 'package:chat_firestore/features/firebase/presentation/chat/cubit/firestore_create_group_chat_page_cubit.dart';
import 'package:chat_firestore/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Group chat page creation with form with optional group chat name input
@RoutePage()
class FirestoreCreateGroupChatPage extends StatelessWidget {
  const FirestoreCreateGroupChatPage({
    super.key,
    this.groupChatUsers = const [],
  });

  /// Users to create a group chat
  final List<FirestoreUser> groupChatUsers;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<FirestoreCreateGroupChatPageCubit>(),
      child: Builder(builder: (context) {
        return Scaffold(
          appBar: AppBar(
            title: Text(S.current.createChat),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  // Text form input - chat name (optional)
                  TextFormField(
                    decoration:
                        InputDecoration(label: Text(S.current.chatName)),
                    keyboardType: TextInputType.text,
                    onChanged: (value) => context
                        .read<FirestoreCreateGroupChatPageCubit>()
                        .setChatName(value),
                  ),

                  // Create group chat page
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: ElevatedButton(
                      onPressed: () => sl<AppRouter>().replace(
                        FirestoreChatConversationRoute(
                          users: groupChatUsers,
                          chatName: context
                              .read<FirestoreCreateGroupChatPageCubit>()
                              .state
                              .chatName,
                        ),
                      ),
                      child: Text(S.current.createChat),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
