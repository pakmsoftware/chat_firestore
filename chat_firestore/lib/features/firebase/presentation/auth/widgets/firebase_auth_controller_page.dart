import 'package:chat_firestore/features/firebase/presentation/auth/cubit/firebase_auth_controller_cubit.dart';
import 'package:chat_firestore/features/firebase/presentation/auth/widgets/firebase_auth_loading_page.dart';
import 'package:chat_firestore/features/firebase/presentation/login/widgets/firebase_login_page.dart';
import 'package:chat_firestore/features/firebase/presentation/main_manager/widgets/firebase_main_page.dart';
import 'package:chat_firestore/features/firebase/presentation/routing/cubit/firebase_routing_manager_cubit.dart';
import 'package:chat_firestore/features/firebase/presentation/verify_email/widgets/firebase_verify_email_page.dart';
import 'package:chat_firestore/core/di/injection_container.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@RoutePage()
class FirebaseAuthControllerPage extends StatelessWidget {
  const FirebaseAuthControllerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => sl<FirebaseAuthControllerCubit>()..init(),
        ),
        BlocProvider(
          create: (context) => sl<FirebaseRoutingManagerCubit>(),
        ),
      ],
      child: Builder(
        builder: (context) {
          return BlocBuilder<FirebaseAuthControllerCubit,
              FirebaseAuthControllerState>(
            builder: (context, state) {
              if (state.isLoadingAuthData) {
                return const FirebaseAuthLoadingPage();
              }
              if (state.loggedUser == null) {
                // Login page
                return const FirebaseLoginPage();
              }

              if ((state.loggedUser?.emailVerified ?? false) == false) {
                // Verify email blocker page
                return FirebaseVerifyEmailPage(
                  user: state.loggedUser,
                );
              }

              // else return main page
              return const FirebaseMainPage();
            },
          );
        },
      ),
    );
  }
}
