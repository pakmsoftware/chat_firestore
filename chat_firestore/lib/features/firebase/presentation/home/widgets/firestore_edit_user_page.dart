import 'package:chat_firestore/features/firebase/domain/models/firestore_user.dart';
import 'package:chat_firestore/features/firebase/presentation/home/cubit/firebase_fill_in_data_cubit.dart';
import 'package:chat_firestore/features/firebase/presentation/home/widgets/firebase_fill_in_data_form.dart';
import 'package:chat_firestore/features/firebase/presentation/routing/cubit/firebase_routing_manager_cubit.dart';
import 'package:chat_firestore/generated/l10n.dart';
import 'package:chat_firestore/core/di/injection_container.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Page for editing user data in firestore
@RoutePage()
class FirestoreEditUserPage extends StatelessWidget {
  const FirestoreEditUserPage({super.key, this.user});

  final FirestoreUser? user;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<FirebaseFillInDataCubit>()..initForEdit(user!),
      child: Builder(builder: (context) {
        return BlocListener<FirebaseFillInDataCubit, FirebaseFillInDataState>(
          listener: _editUserListener,
          child: Scaffold(
            appBar: AppBar(
              title: Text(S.current.editProfile),
            ),
            body: FirebaseFillInDataForm(
              user: user,
            ),
          ),
        );
      }),
    );
  }

  void _editUserListener(BuildContext context, FirebaseFillInDataState state) {
    if (!state.submitSuccess) {
      return;
    }

    // Else pop and refresh page
    sl<FirebaseRoutingManagerCubit>().popAndRefresh();
  }
}
