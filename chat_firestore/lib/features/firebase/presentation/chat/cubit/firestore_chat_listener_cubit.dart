import 'dart:async';

import 'package:chat_firestore/features/firebase/domain/models/firestore_chat.dart';
import 'package:chat_firestore/features/firebase/domain/repositories/i_firestore_chat_repository.dart';
import 'package:chat_firestore/features/firebase/presentation/auth/cubit/firebase_auth_controller_cubit.dart';
import 'package:chat_firestore/core/di/injection_container.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:chat_firestore/core/helper/future_failable_extension.dart';

part 'firestore_chat_listener_state.dart';
part 'firestore_chat_listener_cubit.freezed.dart';

/// Central cubit controlling received messages from firestore stream subscription
class FirestoreChatListenerCubit extends Cubit<FirestoreChatListenerState> {
  FirestoreChatListenerCubit(this._chatRepository)
      : super(FirestoreChatListenerState());

  final IFirestoreChatRepository _chatRepository;

  StreamSubscription<FirestoreChat?>? _streamSubscription;

  @override
  Future<void> close() {
    _streamSubscription?.cancel();
    return super.close();
  }

  /// Initialize listener
  Future<void> init() async {
    final userId =
        sl<FirebaseAuthControllerCubit>().state.loggedUser?.uid ?? '';
    final stream = (await _chatRepository.streamNewMessage(userId)).getData();
    _streamSubscription = stream?.listen((chat) {
      if (chat == null || chat.lastMsg == null) {
        return;
      }

      // Else emit new received message
      _setReceivedMessage(chat);
    });
  }

  void _setReceivedMessage(FirestoreChat? chat) {
    emit(state.copyWith(receivedChat: chat));
  }
}
