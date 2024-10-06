import 'package:chat_firestore/core/router/app_router.dart';
import 'package:chat_firestore/core/router/app_router.gr.dart';
import 'package:chat_firestore/features/firebase/presentation/chat/cubit/firestore_chat_listener_cubit.dart';
import 'package:chat_firestore/features/firebase/presentation/chat/cubit/firestore_chat_page_cubit.dart';
import 'package:chat_firestore/features/firebase/presentation/chat/widgets/firestore_chat_list_item.dart';
import 'package:chat_firestore/features/firebase/presentation/home/widgets/firestore_paged_list_view.dart';
import 'package:chat_firestore/features/firebase/presentation/home/widgets/firestore_filter_button.dart';
import 'package:chat_firestore/core/di/injection_container.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Page showing list of chats
@RoutePage()
class FirestoreChatPage extends StatelessWidget {
  const FirestoreChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<FirestoreChatPageCubit>()..init(),
      child: Builder(
        builder: (context) {
          return BlocListener<FirestoreChatListenerCubit,
              FirestoreChatListenerState>(
            listener: _chatListener,
            child: Scaffold(
              body: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child:
                    BlocBuilder<FirestoreChatPageCubit, FirestoreChatPageState>(
                  builder: (context, state) {
                    if (state.isLoadingData) {
                      return const Center(
                        child: CircularProgressIndicator.adaptive(),
                      );
                    }

                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        // Filtering button
                        FirestoreFilterButton(
                          areFiltersUsed: state.filters.anyFiltersUsed,
                          onTap: () {
                            sl<AppRouter>().push(
                              FirestoreFilterRoute(
                                initialFilters: state.filters,
                                applyFiltersCallback: (filters) => context
                                    .read<FirestoreChatPageCubit>()
                                    .filterChats(filters),
                              ),
                            );
                          },
                        ),
                        Expanded(
                          child: FirestorePagedListView(
                            list: state.chats,
                            listItemBuilder: (chat, index) =>
                                FirestoreChatListItem(
                              chat: chat,
                              isRead: chat.isLastMsgRead,
                            ),
                            fetchMoreCallback: () =>
                                state.filters.anyFiltersUsed
                                    ? {}
                                    : context
                                        .read<FirestoreChatPageCubit>()
                                        .fetchMore(),
                            separator: const Divider(),
                            fetchMoreThreshold: 50,
                            pullToRefreshCallback: () async => state
                                    .filters.anyFiltersUsed
                                ? {}
                                : context.read<FirestoreChatPageCubit>().init(),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  void _chatListener(BuildContext context, FirestoreChatListenerState state) {
    // Ignore for null received message
    if (state.receivedChat == null) {
      return;
    }

    // Else move received message to the top or insert new chat if it's message from new chat
    context
        .read<FirestoreChatPageCubit>()
        .handleReceivedChat(state.receivedChat!);
  }
}
