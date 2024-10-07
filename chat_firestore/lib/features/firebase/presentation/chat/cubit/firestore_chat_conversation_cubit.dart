import 'dart:async';

import 'package:chat_firestore/features/firebase/domain/models/firestore_chat.dart';
import 'package:chat_firestore/features/firebase/domain/models/firestore_chat_message.dart';
import 'package:chat_firestore/features/firebase/domain/models/firestore_chat_message_receiver.dart';
import 'package:chat_firestore/features/firebase/domain/models/firestore_chat_message_status.dart';
import 'package:chat_firestore/features/firebase/domain/models/firestore_list_request.dart';
import 'package:chat_firestore/features/firebase/domain/models/firestore_paged_list.dart';
import 'package:chat_firestore/features/firebase/domain/models/firestore_pagination.dart';
import 'package:chat_firestore/features/firebase/domain/models/firestore_user.dart';
import 'package:chat_firestore/features/firebase/domain/repositories/i_firestore_chat_repository.dart';
import 'package:chat_firestore/features/firebase/presentation/auth/cubit/firebase_auth_controller_cubit.dart';
import 'package:chat_firestore/core/di/injection_container.dart';
import 'package:chat_firestore/features/firebase/presentation/chat/cubit/firestore_chat_listener_cubit.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';
import 'package:chat_firestore/core/helper/future_failable_extension.dart';

part 'firestore_chat_conversation_state.dart';
part 'firestore_chat_conversation_cubit.freezed.dart';

/// Cubit controlling single page of chat conversation with chat messages
class FirestoreChatConversationCubit
    extends Cubit<FirestoreChatConversationState> {
  FirestoreChatConversationCubit(this._chatRepository)
      : super(FirestoreChatConversationState(
          isLoadingData: false,
          isFetchingMore: false,
          isSendingMessage: false,
          messages: FirestorePagedList.empty(),
          receiverIds: [],
        ));

  final IFirestoreChatRepository _chatRepository;

  /// Conversation last message listener
  /// Catches new messages from others or changes to last conversation message e.g that it was read by someone
  StreamSubscription<FirestoreChatMessage?>? _streamSubscription;

  @override
  Future<void> close() {
    // Cancel subscrption on cubit page dispose
    _streamSubscription?.cancel();
    return super.close();
  }

  /// Load initial chat messages by chat Id
  /// If chat does not exist -> create chat with no messages
  Future<void> init({
    FirestoreChat? chat,
    List<FirestoreUser>? users,
    String? chatName,
  }) async {
    emit(state.copyWith(isLoadingData: true));
    const uuid = Uuid();
    FirestoreChat? loadedChat;

    // Load chat from [chat] or from firestore
    if (chat != null && chatName == null) {
      loadedChat = chat;
      emit(state.copyWith(chat: loadedChat));
    } else if (users != null) {
      loadedChat = (await _chatRepository
              .getChatWithUsers(users.map((e) => e.id).toList()))
          .getData();
      // Create chat if loaded chat empty
      if (loadedChat == null) {
        loadedChat = FirestoreChat(
          id: uuid.v4(),
          users: users.map((e) => e.toChatUser()).toList(),
          userIds: users.map((e) => e.id).toList(),
          name: chatName,
        );
        await _chatRepository.addChat(loadedChat);
        emit(state.copyWith(chat: loadedChat));
      } else {
        // If chat names are different -> create new group chat
        if (loadedChat.chatName != chatName) {
          loadedChat = FirestoreChat(
            id: uuid.v4(),
            users: loadedChat.users,
            userIds: loadedChat.userIds,
            name: chatName,
          );
          await _chatRepository.addChat(loadedChat);
        }
        emit(state.copyWith(chat: loadedChat));
      }
    }

    if (loadedChat != null) {
      // Set receivers for chat messages
      _initReceivers(chat: loadedChat);

      // Start listening for new messages
      unawaited(_startListener(loadedChat.id));
    }

    // Load first page of messages for chat
    await fetchMoreMsg(isFirstPage: true);

    emit(state.copyWith(isLoadingData: false));
  }

  /// Starts listener for chat conversation last message from firestore
  Future<void> _startListener(String chatId) async {
    final stream =
        (await _chatRepository.streamConversationLastMessage(chatId)).getData();
    _streamSubscription = stream?.listen((message) {
      if (message == null) {
        return;
      }

      // Else handle message - either add it or mark as read
      _handleMessage(message);
    });
  }

  /// Marks message as read if user is in receivers and read flag set from false to true
  Future<FirestoreChatMessage> _updateReceiversWithReadMessage(
      FirestoreChatMessage message) async {
    // Also mark message as read
    final meReceiverIndex = message.receivers.indexWhere(
      (e) =>
          e.userId == sl<FirebaseAuthControllerCubit>().state.loggedUser?.uid,
    );
    var receivedMessage = message;
    if (meReceiverIndex >= 0) {
      final meReceiver = message.receivers[meReceiverIndex];

      // Mark message as read only when the flag has not been changed yet
      if (!meReceiver.isRead) {
        receivedMessage = receivedMessage.copyWith(
          receivers: List.of(receivedMessage.receivers)
            ..removeAt(meReceiverIndex)
            ..insert(
              meReceiverIndex,
              FirestoreChatMessageReceiver(
                userId: meReceiver.userId,
                isRead: true,
              ),
            ),
        );
        // Update firestore with receiver read flags
        unawaited(_sendMsgToFirestore(
          messageToSend: receivedMessage,
          markMessageAsSent: false,
        ));
        // Inform central chat listener cubit about the change as central chat listener listens for latest chat
        // so marking older chat messages as read won't be caught
        if (state.chat != null) {
          sl<FirestoreChatListenerCubit>().handleReadMessage(
            message: receivedMessage,
            relatedChat: state.chat!,
          );
        }
        return receivedMessage;
      }
    }
    return receivedMessage;
  }

  /// Handles received message from stream
  Future _handleMessage(FirestoreChatMessage message) async {
    // Firstly check if message exists
    final msgIndex = state.messages.data.indexWhere((e) => e.id == message.id);
    final readMessage = await _updateReceiversWithReadMessage(message);
    if (msgIndex < 0) {
      // Handling new message
      // if message does not exist -> insert it as a new one
      final newMessages = state.messages.copyWith(
        data: List.of(state.messages.data)..insert(0, readMessage),
      );
      emit(state.copyWith(messages: newMessages));
      return;
    }

    // Else message exists so it needs to be replaced by its metadata changes
    final newMessages = state.messages.copyWith(
      data: List.of(state.messages.data)
        ..removeAt(msgIndex)
        ..insert(msgIndex, readMessage),
    );
    emit(state.copyWith(messages: newMessages));
  }

  /// Emit chat receivers ids
  void _initReceivers({required FirestoreChat chat}) {
    final senderId =
        sl<FirebaseAuthControllerCubit>().state.loggedUser?.uid ?? '';
    final receivers = chat.userIds.where((e) => e != senderId).toList();
    emit(state.copyWith(receiverIds: receivers));
  }

  /// Fetches more messages
  Future<void> fetchMoreMsg({bool isFirstPage = false}) async {
    if (state.isFetchingMore) {
      return;
    }

    emit(state.copyWith(isFetchingMore: true));

    // Else fetch messages
    final request = FirestoreListRequest(
      orderBy: 'timestamp',
      orderByDescending: true,
      pagination: FirestorePagination(
        lastDocument:
            isFirstPage ? null : state.messages.pagination.lastDocument,
      ),
    );

    final pageData = (await _chatRepository.listMessages(
      chatId: state.chat?.id ?? '',
      request: request,
    ))
        .getData();

    final mergedData = pageData?.mergeData(
      oldData: state.messages,
      useFirstPage: isFirstPage,
    );

    emit(state.copyWith(
      isFetchingMore: false,
      messages: mergedData ?? state.messages,
    ));
  }

  /// Sets message from input
  void setMessage(String? message) {
    emit(state.copyWith(messageToSend: message));
  }

  /// Sends message to firestore
  Future<void> sendMessage() async {
    emit(state.copyWith(isSendingMessage: true));

    final sender = sl<FirebaseAuthControllerCubit>().state.loggedUser;
    const uuid = Uuid();

    // Message to add
    final messageToSend = FirestoreChatMessage(
      id: uuid.v4(),
      content: state.messageToSend?.trim() ?? '',
      timestamp: FieldValue.serverTimestamp(),
      senderId: sender?.uid ?? '',
      chatId: state.chat?.id ?? '',
      receivers: state.receiverIds
          .map((e) => FirestoreChatMessageReceiver(
                userId: e,
                isRead: false,
              ))
          .toList(),
    );

    // Add message to whole list
    final newListData = [
      messageToSend,
      ...state.messages.data,
    ];
    final newList = state.messages.copyWith(data: newListData);
    emit(state.copyWith(messages: newList, isSendingMessage: false));
    setMessage(null);

    // Send message to firestore
    unawaited(_sendMsgToFirestore(messageToSend: messageToSend));
  }

  /// Sends message to firestore
  /// Updates both messages and lastMsg prop for chat
  Future<void> _sendMsgToFirestore({
    required FirestoreChatMessage messageToSend,
    bool markMessageAsSent = true,
  }) async {
    unawaited(_chatRepository.addMessage(messageToSend).then(
      (value) {
        final result = value.getData();
        if (result == null || result == false) {
          return;
        }

        // Else change status of message to be sent
        if (markMessageAsSent) {
          _markMessageAsSent(messageToSend);
        }

        // And update chat last msg information
        final updatedChat = state.chat?.copyWith(
          lastMsg: messageToSend,
          lastMsgTimestamp: messageToSend.timestamp,
        );

        /// Overwrite chat
        if (updatedChat != null) {
          _chatRepository.addChat(updatedChat);
        }
      },
    ));
  }

  /// Marks message as sent
  Future<void> _markMessageAsSent(FirestoreChatMessage message) async {
    final messageIndex =
        state.messages.data.indexWhere((e) => e.id == message.id);
    if (messageIndex < 0) {
      return;
    }

    // ELSE update message
    final newMessage =
        message.copyWith(status: FirestoreChatMessageStatus.sent);

    final newListData = List.of(state.messages.data)
      ..removeAt(messageIndex)
      ..insert(0, newMessage);
    emit(
      state.copyWith(
        messages: state.messages.copyWith(data: newListData),
      ),
    );
  }
}
