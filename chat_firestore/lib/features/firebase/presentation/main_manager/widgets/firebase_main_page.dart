import 'package:chat_firestore/features/firebase/presentation/chat/cubit/firestore_chat_listener_cubit.dart';
import 'package:chat_firestore/features/firebase/presentation/chat/widgets/firestore_chat_page.dart';
import 'package:chat_firestore/features/firebase/presentation/home/cubit/firebase_home_cubit.dart';
import 'package:chat_firestore/features/firebase/presentation/home/widgets/firebase_home_page.dart';
import 'package:chat_firestore/features/firebase/presentation/main_manager/cubit/firebase_main_page_manager_cubit.dart';
import 'package:chat_firestore/features/firebase/presentation/main_manager/widgets/firebase_logout_button.dart';
import 'package:chat_firestore/generated/l10n.dart';
import 'package:chat_firestore/core/di/injection_container.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Firebase main page with overall bottom menu and app bar
@RoutePage()
class FirebaseMainPage extends StatelessWidget {
  const FirebaseMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => sl<FirebaseMainPageManagerCubit>(),
        ),
        BlocProvider(
          create: (context) => sl<FirebaseHomeCubit>()..init(),
        ),
        BlocProvider(
          create: (context) => sl<FirestoreChatListenerCubit>()..init(),
        ),
      ],
      child: Builder(
        builder: (context) {
          return BlocBuilder<FirebaseMainPageManagerCubit,
              FirebaseMainPageManagerState>(
            builder: (context, state) {
              return Scaffold(
                body: _pageFromIndex(state.currentIndex),
                bottomNavigationBar: BottomNavigationBar(
                  currentIndex: state.currentIndex,
                  onTap: (index) => context
                      .read<FirebaseMainPageManagerCubit>()
                      .setCurrentIndex(index),
                  items: [
                    BottomNavigationBarItem(
                      icon: const Icon(Icons.account_circle),
                      label: S.current.users,
                    ),
                    BottomNavigationBarItem(
                      icon: const Icon(Icons.chat),
                      label: S.current.chat,
                    ),
                  ],
                ),
                appBar: AppBar(
                  title: Text(state.appBarTitle),
                  surfaceTintColor: Colors.transparent,
                  actions: [
                    ...state.extraActions,
                    // Logout popup
                    FirebaseLogoutButton(
                      onLogout: () => context
                          .read<FirebaseMainPageManagerCubit>()
                          .signOut(),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }

  Widget _pageFromIndex(int currentIndex) {
    switch (currentIndex) {
      case 1:
        return const FirestoreChatPage();
      case 0:
      default:
        return const FirebaseHomePage();
    }
  }
}
