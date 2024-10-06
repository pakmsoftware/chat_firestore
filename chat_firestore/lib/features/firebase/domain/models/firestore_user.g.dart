// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firestore_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FirestoreUserImpl _$$FirestoreUserImplFromJson(Map<String, dynamic> json) =>
    _$FirestoreUserImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      surname: json['surname'] as String,
      createdDate: DateTime.parse(json['createdDate'] as String),
      fullNameLower: json['fullNameLower'] as String?,
      avatar: json['avatar'] as String?,
      age: (json['age'] as num?)?.toInt(),
      height: (json['height'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$FirestoreUserImplToJson(_$FirestoreUserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'surname': instance.surname,
      'createdDate': instance.createdDate.toIso8601String(),
      'fullNameLower': instance.fullNameLower,
      'avatar': instance.avatar,
      'age': instance.age,
      'height': instance.height,
    };
