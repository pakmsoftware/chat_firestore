import 'package:chat_firestore/core/router/app_router.dart';
import 'package:chat_firestore/core/router/app_router.gr.dart';
import 'package:chat_firestore/features/firebase/presentation/home/cubit/firebase_home_cubit.dart';
import 'package:chat_firestore/features/firebase/presentation/home/widgets/firestore_filter_button.dart';
import 'package:chat_firestore/features/firebase/presentation/home/widgets/firestore_paged_list_view.dart';
import 'package:chat_firestore/features/firebase/presentation/home/widgets/firestore_query_input.dart';
import 'package:chat_firestore/features/firebase/presentation/home/widgets/firestore_user_bar_profile.dart';
import 'package:chat_firestore/features/firebase/presentation/home/widgets/firestore_user_list_item.dart';
import 'package:chat_firestore/features/firebase/presentation/main_manager/cubit/firebase_main_page_manager_cubit.dart';
import 'package:chat_firestore/features/firebase/presentation/routing/cubit/firebase_routing_manager_cubit.dart';
import 'package:chat_firestore/core/di/injection_container.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Home page for logged user on firebase
@RoutePage()
class FirebaseHomePage extends StatelessWidget {
  const FirebaseHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<FirebaseHomeCubit>()..init(),
      child: Builder(builder: (context) {
        return MultiBlocListener(
          listeners: [
            BlocListener<FirebaseHomeCubit, FirebaseHomeState>(
              listener: _homeListener,
            ),
            BlocListener<FirebaseRoutingManagerCubit,
                FirebaseRoutingManagerState>(
              listener: _routingListener,
            ),
          ],
          child: BlocBuilder<FirebaseHomeCubit, FirebaseHomeState>(
            builder: (context, state) {
              return Scaffold(
                body: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    children: [
                      // Filters / search query
                      Row(
                        children: [
                          // Name query
                          Expanded(
                            child: FirestoreQueryInput(
                              onQueryChanged: (query) => context
                                  .read<FirebaseHomeCubit>()
                                  .autocompleteNameQuery(query),
                            ),
                          ),
                          const SizedBox(width: 8),
                          FirestoreFilterButton(
                            onTap: () => sl<AppRouter>().push(
                              FirestoreFilterRoute(
                                initialFilters: state.uiFilters,
                                applyFiltersCallback: (filters) => context
                                    .read<FirebaseHomeCubit>()
                                    .applyFilters(filters),
                              ),
                            ),
                            areFiltersUsed: state.uiFilters.anyFiltersUsed,
                          ),
                        ],
                      ),
                      const SizedBox(height: 8),
                      if (state.isPageInit || state.isLoadingData)
                        const Center(
                          child: CircularProgressIndicator.adaptive(),
                        )
                      else
                        Expanded(
                          child: FirestorePagedListView(
                            list: state.userList,
                            listItemBuilder: (user, index) =>
                                FirerstoreUserListItem(user: user),
                            fetchMoreCallback: () => context
                                .read<FirebaseHomeCubit>()
                                .fetchMoreUsers(),
                            pullToRefreshCallback: () => context
                                .read<FirebaseHomeCubit>()
                                .fetchMoreUsers(useFirstPage: true),
                            separator: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Divider(),
                            ),
                            fetchMoreThreshold: 50,
                          ),
                        ),
                    ],
                  ),
                ),
              );
            },
          ),
        );
      }),
    );
  }

  void _homeListener(BuildContext context, FirebaseHomeState state) {
    if (state.showFillDataForm) {
      // push fill in form page
      sl<AppRouter>().push(const FirebaseFillInDataRoute());
    }

    /// Set app bar widget with user profile
    if (state.user != null) {
      sl<FirebaseMainPageManagerCubit>().setExtraActions([
        FirestoreUserBarProfile(user: state.user),
      ]);
    }
  }

  void _routingListener(
      BuildContext context, FirebaseRoutingManagerState state) {
    if (!state.reloadPage) {
      return;
    }

    // Reload page
    context.read<FirebaseHomeCubit>().init();
  }
}
