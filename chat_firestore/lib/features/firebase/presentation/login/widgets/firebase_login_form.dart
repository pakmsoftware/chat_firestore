import 'package:chat_firestore/core/helper/validators.dart';
import 'package:chat_firestore/features/firebase/presentation/login/cubit/firebase_login_cubit.dart';
import 'package:chat_firestore/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Login/Registration form
class FirebaseLoginForm extends StatelessWidget {
  const FirebaseLoginForm({super.key});

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
              // Email
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                validator: EmailValidator.validateWithMessage,
                decoration: InputDecoration(
                  label: Text(S.current.enterEmail),
                ),
                onChanged: (value) =>
                    context.read<FirebaseLoginCubit>().setEmail(value),
              ),

              // Password
              TextFormField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                validator: PasswordValidator.validateWithMessage,
                decoration: InputDecoration(
                  label: Text(S.current.enterPassword),
                ),
                onChanged: (value) =>
                    context.read<FirebaseLoginCubit>().setPassword(value),
              ),

              // Login and Register button
              BlocBuilder<FirebaseLoginCubit, FirebaseLoginState>(
                builder: (context, state) {
                  if (state.isSubmitting) {
                    return const CircularProgressIndicator.adaptive();
                  }
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Login
                      ElevatedButton(
                        onPressed: () {
                          if (!formKey.currentState!.validate()) {
                            return;
                          }

                          context.read<FirebaseLoginCubit>().login();
                        },
                        child: Text(S.current.login),
                      ),

                      const SizedBox(width: 12),

                      // Register
                      ElevatedButton(
                        onPressed: () {
                          if (!formKey.currentState!.validate()) {
                            return;
                          }

                          context.read<FirebaseLoginCubit>().register();
                        },
                        child: Text(S.current.register),
                      ),
                    ],
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
