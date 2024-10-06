// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firestore_chat_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FirestoreChatMessageImpl _$$FirestoreChatMessageImplFromJson(
        Map<String, dynamic> json) =>
    _$FirestoreChatMessageImpl(
      id: json['id'] as String,
      content: json['content'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
      senderId: json['senderId'] as String,
      chatId: json['chatId'] as String,
      receivers: (json['receivers'] as List<dynamic>)
          .map((e) =>
              FirestoreChatMessageReceiver.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$FirestoreChatMessageImplToJson(
        _$FirestoreChatMessageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'content': instance.content,
      'timestamp': instance.timestamp.toIso8601String(),
      'senderId': instance.senderId,
      'chatId': instance.chatId,
      'receivers': _mapReceivers(instance.receivers),
    };
