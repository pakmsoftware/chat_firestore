import 'package:chat_firestore/core/app/type_aliases.dart';
import 'package:chat_firestore/core/error/repository_request_handler.dart';
import 'package:chat_firestore/features/firebase/domain/datasources/i_firestore_chat_datasource.dart';
import 'package:chat_firestore/features/firebase/domain/models/firestore_chat.dart';
import 'package:chat_firestore/features/firebase/domain/models/firestore_chat_message.dart';
import 'package:chat_firestore/features/firebase/domain/models/firestore_list_request.dart';
import 'package:chat_firestore/features/firebase/domain/models/firestore_paged_list.dart';
import 'package:chat_firestore/features/firebase/domain/repositories/i_firestore_chat_repository.dart';

class FirestoreChatRepository extends IFirestoreChatRepository {
  FirestoreChatRepository(this._datasource);

  final IFirestoreChatDatasource _datasource;

  @override
  FutureFailable<bool> addChat(FirestoreChat chat) {
    return RepositoryRequestHandler<bool>()(
      request: () => _datasource.addChat(chat),
    );
  }

  @override
  FutureFailable<bool> addMessage(FirestoreChatMessage message) {
    return RepositoryRequestHandler<bool>()(
      request: () => _datasource.addMessage(message),
    );
  }

  @override
  FutureFailable<FirestorePagedList<FirestoreChat>> listChats(
      {required String userId, required FirestoreListRequest request}) {
    return RepositoryRequestHandler<FirestorePagedList<FirestoreChat>>()(
      request: () => _datasource.listChats(userId: userId, request: request),
    );
  }

  @override
  FutureFailable<FirestorePagedList<FirestoreChatMessage>> listMessages(
      {required String chatId, required FirestoreListRequest request}) {
    return RepositoryRequestHandler<FirestorePagedList<FirestoreChatMessage>>()(
      request: () => _datasource.listMessages(chatId: chatId, request: request),
    );
  }

  @override
  FutureFailable<Stream<FirestoreChat?>> streamNewMessage(String userId) {
    return RepositoryRequestHandler<Stream<FirestoreChat?>>()(
      request: () async => _datasource.streamNewMessage(userId),
    );
  }

  @override
  FutureFailable<bool> updateMessage(FirestoreChatMessage message) {
    return RepositoryRequestHandler<bool>()(
      request: () => _datasource.updateMessage(message),
    );
  }

  @override
  FutureFailable<FirestoreChat?> getChatWithUsers(List<String> userIds) {
    return RepositoryRequestHandler<FirestoreChat?>()(
      request: () => _datasource.getChatWithUsers(userIds),
    );
  }

  @override
  FutureFailable<FirestoreChat?> getChatById(String chatId) {
    return RepositoryRequestHandler<FirestoreChat?>()(
      request: () => _datasource.getChatById(chatId),
    );
  }

  @override
  FutureFailable<Stream<FirestoreChatMessage?>> streamConversationLastMessage(
      String chatId) {
    return RepositoryRequestHandler<Stream<FirestoreChatMessage?>>()(
      request: () async => _datasource.streamConversationLastMessage(chatId),
    );
  }

  @override
  FutureFailable<FirestorePagedList<FirestoreChat>> filterChatsByUserIds({
    required FirestoreListRequest request,
    required List<String> userIds,
  }) {
    return RepositoryRequestHandler<FirestorePagedList<FirestoreChat>>()(
      request: () => _datasource.filterChatsByUserIds(
        request: request,
        userIds: userIds,
      ),
    );
  }
}
