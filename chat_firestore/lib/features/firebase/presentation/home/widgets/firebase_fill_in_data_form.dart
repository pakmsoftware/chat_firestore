import 'package:chat_firestore/features/firebase/domain/models/firestore_user.dart';
import 'package:chat_firestore/features/firebase/presentation/home/cubit/firebase_fill_in_data_cubit.dart';
import 'package:chat_firestore/features/firebase/presentation/home/widgets/firestore_add_avatar_button.dart';
import 'package:chat_firestore/features/firebase/presentation/home/widgets/firestore_user_avatar.dart';
import 'package:chat_firestore/features/firebase/utils/firebase_form_validator.dart';
import 'package:chat_firestore/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Form to fill in basic firestore user data to create user in firestore
class FirebaseFillInDataForm extends StatelessWidget {
  const FirebaseFillInDataForm({super.key, this.user});

  final FirestoreUser? user;

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    return Form(
      key: formKey,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // AVATAR
              BlocBuilder<FirebaseFillInDataCubit, FirebaseFillInDataState>(
                builder: (context, state) {
                  if (state.avatar != null || state.localAvatar != null) {
                    return InkWell(
                      onTap: () =>
                          context.read<FirebaseFillInDataCubit>().setAvatar(),
                      child: FirestoreUserAvatar(
                        avatar: state.avatar,
                        localFile: state.localAvatar,
                      ),
                    );
                  }
                  return FirestoreAddAvatarButton(
                    addAvatarCallback: () =>
                        context.read<FirebaseFillInDataCubit>().setAvatar(),
                  );
                },
              ),

              // Name input
              TextFormField(
                initialValue: user?.name,
                keyboardType: TextInputType.name,
                validator: FirebaseFormValidator.validateNotEmpty,
                onChanged: (value) =>
                    context.read<FirebaseFillInDataCubit>().setName(value),
                decoration: InputDecoration(
                  label: Text(S.current.enterName),
                ),
              ),

              // Surname input
              TextFormField(
                initialValue: user?.surname,
                keyboardType: TextInputType.name,
                validator: FirebaseFormValidator.validateNotEmpty,
                onChanged: (value) =>
                    context.read<FirebaseFillInDataCubit>().setSurname(value),
                decoration: InputDecoration(
                  label: Text(S.current.enterSurname),
                ),
              ),

              // Age input
              TextFormField(
                initialValue: user?.age?.toString(),
                keyboardType: TextInputType.number,
                validator: FirebaseFormValidator.validateIsIntNumber,
                onChanged: (value) =>
                    context.read<FirebaseFillInDataCubit>().setAge(value),
                decoration: InputDecoration(
                  label: Text(S.current.enterAge),
                ),
              ),

              // Height input
              TextFormField(
                initialValue: user?.height?.toString(),
                keyboardType: TextInputType.number,
                validator: FirebaseFormValidator.validateIsIntNumber,
                onChanged: (value) =>
                    context.read<FirebaseFillInDataCubit>().setHeight(value),
                decoration: InputDecoration(
                  label: Text(S.current.enterHeight),
                ),
              ),
              const SizedBox(height: 16),
              // Submit button
              BlocBuilder<FirebaseFillInDataCubit, FirebaseFillInDataState>(
                builder: (context, state) {
                  if (state.isSubmitting) {
                    return const CircularProgressIndicator.adaptive();
                  }
                  return ElevatedButton(
                    onPressed: () {
                      if (!formKey.currentState!.validate()) {
                        return;
                      }
                      context.read<FirebaseFillInDataCubit>().submit();
                    },
                    child: Text(S.current.save),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
