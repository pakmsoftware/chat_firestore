import 'package:chat_firestore/core/app/type_aliases.dart';
import 'package:chat_firestore/features/firebase/domain/models/firestore_chat.dart';
import 'package:chat_firestore/features/firebase/domain/models/firestore_chat_message.dart';
import 'package:chat_firestore/features/firebase/domain/models/firestore_list_request.dart';
import 'package:chat_firestore/features/firebase/domain/models/firestore_paged_list.dart';

/// Repository for handling chat objects in chats collection
abstract class IFirestoreChatRepository {
  /// Adds new [chat] to chats collection
  FutureFailable<bool> addChat(FirestoreChat chat);

  /// Gets chat with [userIds] to determine if it already exists when creating new chat with user
  FutureFailable<FirestoreChat?> getChatWithUsers(List<String> userIds);

  /// Gets chat by ID
  FutureFailable<FirestoreChat?> getChatById(String chatId);

  /// Adds new [message] to specific chat
  FutureFailable<bool> addMessage(FirestoreChatMessage message);

  /// Stream for new messages for specific [userId]
  FutureFailable<Stream<FirestoreChat?>> streamNewMessage(String userId);

  /// Stream for new messages for specific chat for single conversation or metadata changes of last message
  FutureFailable<Stream<FirestoreChatMessage?>> streamConversationLastMessage(
      String chatId);

  /// Marks specific message as read by receiver
  FutureFailable<bool> updateMessage(FirestoreChatMessage message);

  // LISTS
  /// Lists user chats - paginated
  FutureFailable<FirestorePagedList<FirestoreChat>> listChats({
    required String userId,
    required FirestoreListRequest request,
  });

  /// Lists specific chat merssages - paginated
  FutureFailable<FirestorePagedList<FirestoreChatMessage>> listMessages({
    required String chatId,
    required FirestoreListRequest request,
  });

  /// Filter chats by user Ids
  FutureFailable<FirestorePagedList<FirestoreChat>> filterChatsByUserIds({
    required FirestoreListRequest request,
    required List<String> userIds,
  });
}
