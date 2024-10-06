import 'package:chat_firestore/features/firebase/domain/models/firestore_chat.dart';
import 'package:chat_firestore/features/firebase/domain/models/firestore_chat_filter.dart';
import 'package:chat_firestore/features/firebase/domain/models/firestore_chat_message.dart';
import 'package:chat_firestore/features/firebase/domain/models/firestore_list_request.dart';
import 'package:chat_firestore/features/firebase/domain/models/firestore_paged_list.dart';

/// Interface for handling data tp/from chat firestore collection
abstract class IFirestoreChatDatasource {
  /// Adds new [chat] to chats collection
  Future<bool> addChat(FirestoreChat chat);

  /// Gets chat with [userIds] to determine if it already exists when creating new chat with user
  Future<FirestoreChat?> getChatWithUsers(List<String> userIds);

  /// Gets chat by ID
  Future<FirestoreChat?> getChatById(String chatId);

  /// Adds new [message] to specific chat
  Future<bool> addMessage(FirestoreChatMessage message);

  /// Stream for new messages for specific [userId] for chat list
  Stream<FirestoreChat?> streamNewMessage(String userId);

  /// Stream for new messages for specific chat for single conversation or metadata changes of last message
  Stream<FirestoreChatMessage?> streamConversationLastMessage(String chatId);

  /// Marks specific message as read by receiver
  Future<bool> updateMessage(FirestoreChatMessage message);

  // LISTS
  /// Lists user chats - paginated
  Future<FirestorePagedList<FirestoreChat>> listChats({
    required String userId,
    required FirestoreListRequest request,
  });

  /// Lists specific chat merssages - paginated
  Future<FirestorePagedList<FirestoreChatMessage>> listMessages({
    required String chatId,
    required FirestoreListRequest request,
  });

  /// Filter chats by user Ids
  Future<FirestorePagedList<FirestoreChat>> filterChatsByUserIds({
    required FirestoreListRequest request,
    required List<String> userIds,
  });
}
