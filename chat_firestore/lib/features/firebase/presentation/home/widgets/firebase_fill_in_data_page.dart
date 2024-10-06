import 'package:chat_firestore/features/firebase/presentation/home/cubit/firebase_fill_in_data_cubit.dart';
import 'package:chat_firestore/features/firebase/presentation/home/widgets/firebase_fill_in_data_form.dart';
import 'package:chat_firestore/features/firebase/presentation/routing/cubit/firebase_routing_manager_cubit.dart';
import 'package:chat_firestore/generated/l10n.dart';
import 'package:chat_firestore/core/di/injection_container.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Page that requires users to fill in data to create firestore user
@RoutePage()
class FirebaseFillInDataPage extends StatelessWidget {
  const FirebaseFillInDataPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<FirebaseFillInDataCubit>(),
      child: Builder(builder: (context) {
        return BlocListener<FirebaseFillInDataCubit, FirebaseFillInDataState>(
          listener: _submitSuccessListener,
          child: Scaffold(
            appBar: AppBar(
              title: Text(S.current.fillInData),
            ),
            body: const FirebaseFillInDataForm(),
          ),
        );
      }),
    );
  }

  void _submitSuccessListener(
      BuildContext context, FirebaseFillInDataState state) {
    if (!state.submitSuccess) {
      return;
    }

    // If submit success, pop page and refresh home page to verify user exists
    sl<FirebaseRoutingManagerCubit>().popAndRefresh();
  }
}
