import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'firestore_create_group_chat_page_state.dart';
part 'firestore_create_group_chat_page_cubit.freezed.dart';

/// Cubit controlling group chat creation
class FirestoreCreateGroupChatPageCubit
    extends Cubit<FirestoreCreateGroupChatPageState> {
  FirestoreCreateGroupChatPageCubit()
      : super(FirestoreCreateGroupChatPageState());

  /// Sets chat name from text input
  void setChatName(String name) {
    emit(state.copyWith(chatName: name));
  }
}
