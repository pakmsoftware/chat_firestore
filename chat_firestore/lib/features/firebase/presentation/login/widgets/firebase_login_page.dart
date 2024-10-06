import 'package:chat_firestore/features/firebase/presentation/login/cubit/firebase_login_cubit.dart';
import 'package:chat_firestore/features/firebase/presentation/login/widgets/firebase_login_form.dart';
import 'package:chat_firestore/generated/l10n.dart';
import 'package:chat_firestore/core/di/injection_container.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Firebase login page
@RoutePage()
class FirebaseLoginPage extends StatelessWidget {
  const FirebaseLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<FirebaseLoginCubit>(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(S.current.firebaseLogin),
        ),
        body: const FirebaseLoginForm(),
      ),
    );
  }
}
