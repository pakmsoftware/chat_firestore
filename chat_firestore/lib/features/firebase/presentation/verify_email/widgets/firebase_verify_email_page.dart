import 'package:chat_firestore/features/firebase/presentation/verify_email/cubit/firebase_verify_email_cubit.dart';
import 'package:chat_firestore/generated/l10n.dart';
import 'package:chat_firestore/core/di/injection_container.dart';
import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Page that blocks user before continue until it verifies email
@RoutePage()
class FirebaseVerifyEmailPage extends StatelessWidget {
  const FirebaseVerifyEmailPage({
    this.user,
    super.key,
  });

  final User? user;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      lazy: false,
      create: (context) => sl<FirebaseVerifyEmailCubit>()..init(user),
      child: Scaffold(
        appBar: AppBar(),
        body: Padding(
          padding: const EdgeInsets.all(12),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  S.current.verifyEmail,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  S.current.checkYourInbox,
                ),
                BlocBuilder<FirebaseVerifyEmailCubit, FirebaseVerifyEmailState>(
                  builder: (context, state) {
                    if (state.isSendingEmail) {
                      return const CircularProgressIndicator.adaptive();
                    }
                    return ElevatedButton(
                      onPressed: () => context
                          .read<FirebaseVerifyEmailCubit>()
                          .resendEmailVerification(),
                      child: Text(S.current.sendAgainEmail),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
