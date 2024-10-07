// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firestore_chat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FirestoreChatImpl _$$FirestoreChatImplFromJson(Map<String, dynamic> json) =>
    _$FirestoreChatImpl(
      id: json['id'] as String,
      users: (json['users'] as List<dynamic>)
          .map((e) => FirestoreChatUser.fromJson(e as Map<String, dynamic>))
          .toList(),
      userIds:
          (json['userIds'] as List<dynamic>).map((e) => e as String).toList(),
      userIdsCount: (json['userIdsCount'] as num?)?.toInt(),
      lastMsg: json['lastMsg'] == null
          ? null
          : FirestoreChatMessage.fromJson(
              json['lastMsg'] as Map<String, dynamic>),
      lastMsgTimestamp: const FirestoreTimestampConverter()
          .fromJson(json['lastMsgTimestamp']),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$FirestoreChatImplToJson(_$FirestoreChatImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'users': _mapUsers(instance.users),
      'userIds': instance.userIds,
      'userIdsCount': instance.userIdsCount,
      'lastMsg': _mapLastMsg(instance.lastMsg),
      'lastMsgTimestamp':
          const FirestoreTimestampConverter().toJson(instance.lastMsgTimestamp),
      'name': instance.name,
    };
