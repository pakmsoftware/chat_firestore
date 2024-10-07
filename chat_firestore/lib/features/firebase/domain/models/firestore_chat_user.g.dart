// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firestore_chat_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FirestoreChatUserImpl _$$FirestoreChatUserImplFromJson(
        Map<String, dynamic> json) =>
    _$FirestoreChatUserImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      surname: json['surname'] as String,
      avatar: json['avatar'] as String?,
    );

Map<String, dynamic> _$$FirestoreChatUserImplToJson(
        _$FirestoreChatUserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'surname': instance.surname,
      'avatar': instance.avatar,
    };
