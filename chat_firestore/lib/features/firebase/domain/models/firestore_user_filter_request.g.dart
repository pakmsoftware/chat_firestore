// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'firestore_user_filter_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FirestoreUserFilterRequestImpl _$$FirestoreUserFilterRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$FirestoreUserFilterRequestImpl(
      nameQuery: json['nameQuery'] as String?,
      minAge: (json['minAge'] as num?)?.toInt(),
      maxAge: (json['maxAge'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$FirestoreUserFilterRequestImplToJson(
        _$FirestoreUserFilterRequestImpl instance) =>
    <String, dynamic>{
      'nameQuery': instance.nameQuery,
      'minAge': instance.minAge,
      'maxAge': instance.maxAge,
    };
