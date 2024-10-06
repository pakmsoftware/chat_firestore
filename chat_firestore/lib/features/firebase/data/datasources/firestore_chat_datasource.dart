import 'package:chat_firestore/features/firebase/domain/datasources/i_firestore_chat_datasource.dart';
import 'package:chat_firestore/features/firebase/domain/models/firestore_chat.dart';
import 'package:chat_firestore/features/firebase/domain/models/firestore_chat_message.dart';
import 'package:chat_firestore/features/firebase/domain/models/firestore_list_request.dart';
import 'package:chat_firestore/features/firebase/domain/models/firestore_paged_list.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreChatDatasource extends IFirestoreChatDatasource {
  FirebaseFirestore get _db => FirebaseFirestore.instance;

  @override
  Future<bool> addChat(FirestoreChat chat) async {
    final chatToCreate = chat.copyWith(
      userIdsCount: chat.userIds.length,
      userIds: List.of(chat.userIds)..sort(),
    );
    await _db.collection('chats').doc(chat.id).set(chatToCreate.toJson());
    return true;
  }

  @override
  Future<bool> addMessage(FirestoreChatMessage message) async {
    await _db
        .collection('chats')
        .doc(message.chatId)
        .collection('messages')
        .doc(message.id)
        .set(message.toJson());
    return true;
  }

  @override
  Future<FirestorePagedList<FirestoreChat>> listChats({
    required String userId,
    required FirestoreListRequest request,
  }) async {
    final usedRequest = request.copyWith(collection: 'chats');
    var preQuery = _db
        .collection('chats')
        .orderBy(request.orderBy, descending: request.orderByDescending);
    preQuery = preQuery.where('userIds', arrayContains: userId);
    final query = usedRequest.getPaginationQuery(preQuery: preQuery);

    final dataSnapshots = (await query.get()).docs;
    return FirestorePagedList.fromJson(
      snapshots: dataSnapshots,
      mapFunction: FirestoreChat.fromJson,
      requestPagination: request.pagination,
    );
  }

  @override
  Future<FirestorePagedList<FirestoreChatMessage>> listMessages({
    required String chatId,
    required FirestoreListRequest request,
  }) async {
    final requestWithRef = request.copyWith(
      collectionRef: _db.collection('chats').doc(chatId).collection('messages'),
    );

    final preQuery = _db
        .collection('chats')
        .doc(chatId)
        .collection('messages')
        .where('chatId', isEqualTo: chatId)
        .orderBy(request.orderBy, descending: request.orderByDescending);
    final query = requestWithRef.getPaginationQuery(preQuery: preQuery);
    final dataSnapshots = (await query.get()).docs;
    return FirestorePagedList.fromJson(
      snapshots: dataSnapshots,
      mapFunction: FirestoreChatMessage.fromJson,
      requestPagination: requestWithRef.pagination,
    );
  }

  @override
  Future<bool> updateMessage(FirestoreChatMessage message) {
    return addMessage(message);
  }

  @override
  Stream<FirestoreChat?> streamNewMessage(String userId) {
    final query = _db
        .collection('chats')
        .orderBy('lastMsgTimestamp', descending: true)
        .where('userIds', arrayContains: userId)
        .limit(1);
    return query.snapshots().map(
          (e) => e.docs.isEmpty
              ? null
              : FirestoreChat.fromJson(
                  e.docs.first.data(),
                ),
        );
  }

  @override
  Future<FirestoreChat?> getChatWithUsers(List<String> userIds) async {
    final queredUserIds = List.of(userIds)..sort();
    // Firstly check length of [userIds]
    var query =
        _db.collection('chats').where('userIds', isEqualTo: queredUserIds);

    query = query.limit(1);

    final data = (await query.get()).docs.map((e) => e.data());
    if (data.isEmpty) {
      return null;
    }

    // Else map first result to FirestoreChat
    return FirestoreChat.fromJson(data.first);
  }

  @override
  Future<FirestoreChat?> getChatById(String chatId) async {
    final doc = (await _db.collection('chats').doc(chatId).get()).data();
    if (doc != null) {
      return FirestoreChat.fromJson(doc);
    }
    return null;
  }

  @override
  Stream<FirestoreChatMessage?> streamConversationLastMessage(String chatId) {
    final query = _db
        .collection('chats')
        .doc(chatId)
        .collection('messages')
        .orderBy('timestamp', descending: true)
        .limit(1);

    return query
        .snapshots(includeMetadataChanges: true)
        .map((e) => e.docs.isEmpty
            ? null
            : FirestoreChatMessage.fromJson(
                e.docs.first.data(),
              ));
  }

  @override
  Future<FirestorePagedList<FirestoreChat>> filterChatsByUserIds({
    required FirestoreListRequest request,
    required List<String> userIds,
  }) async {
    var query = _db.collection('chats').orderBy(
          'lastMsgTimestamp',
          descending: true,
        );

    if (userIds.isNotEmpty) {
      query = query.where('userIds', arrayContainsAny: userIds);
    }

    query = request.getPaginationQuery(preQuery: query);

    final dataSnapshots = (await query.get()).docs;
    return FirestorePagedList.fromJson(
      snapshots: dataSnapshots,
      mapFunction: FirestoreChat.fromJson,
      requestPagination: request.pagination,
    );
  }
}
