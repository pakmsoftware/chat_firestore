// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'firestore_chat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FirestoreChat _$FirestoreChatFromJson(Map<String, dynamic> json) {
  return _FirestoreChat.fromJson(json);
}

/// @nodoc
mixin _$FirestoreChat {
  /// UUID
  String get id => throw _privateConstructorUsedError;

  /// Chat users
  @JsonKey(toJson: _mapUsers)
  List<FirestoreChatUser> get users => throw _privateConstructorUsedError;

  /// Chat user IDs - used to filter out chats without logged user for new messages listener
  List<String> get userIds => throw _privateConstructorUsedError;

  /// Number of elements in [userIds] list
  int? get userIdsCount => throw _privateConstructorUsedError;

  /// Last message in chat
  @JsonKey(toJson: _mapLastMsg)
  FirestoreChatMessage? get lastMsg => throw _privateConstructorUsedError;

  /// Last message date to order by DESC by default
  @FirestoreTimestampConverter()
  Object? get lastMsgTimestamp => throw _privateConstructorUsedError;

  /// Custom name for group chats
  String? get name => throw _privateConstructorUsedError;

  /// Serializes this FirestoreChat to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FirestoreChat
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FirestoreChatCopyWith<FirestoreChat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirestoreChatCopyWith<$Res> {
  factory $FirestoreChatCopyWith(
          FirestoreChat value, $Res Function(FirestoreChat) then) =
      _$FirestoreChatCopyWithImpl<$Res, FirestoreChat>;
  @useResult
  $Res call(
      {String id,
      @JsonKey(toJson: _mapUsers) List<FirestoreChatUser> users,
      List<String> userIds,
      int? userIdsCount,
      @JsonKey(toJson: _mapLastMsg) FirestoreChatMessage? lastMsg,
      @FirestoreTimestampConverter() Object? lastMsgTimestamp,
      String? name});

  $FirestoreChatMessageCopyWith<$Res>? get lastMsg;
}

/// @nodoc
class _$FirestoreChatCopyWithImpl<$Res, $Val extends FirestoreChat>
    implements $FirestoreChatCopyWith<$Res> {
  _$FirestoreChatCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FirestoreChat
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? users = null,
    Object? userIds = null,
    Object? userIdsCount = freezed,
    Object? lastMsg = freezed,
    Object? lastMsgTimestamp = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<FirestoreChatUser>,
      userIds: null == userIds
          ? _value.userIds
          : userIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      userIdsCount: freezed == userIdsCount
          ? _value.userIdsCount
          : userIdsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      lastMsg: freezed == lastMsg
          ? _value.lastMsg
          : lastMsg // ignore: cast_nullable_to_non_nullable
              as FirestoreChatMessage?,
      lastMsgTimestamp: freezed == lastMsgTimestamp
          ? _value.lastMsgTimestamp
          : lastMsgTimestamp,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of FirestoreChat
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FirestoreChatMessageCopyWith<$Res>? get lastMsg {
    if (_value.lastMsg == null) {
      return null;
    }

    return $FirestoreChatMessageCopyWith<$Res>(_value.lastMsg!, (value) {
      return _then(_value.copyWith(lastMsg: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FirestoreChatImplCopyWith<$Res>
    implements $FirestoreChatCopyWith<$Res> {
  factory _$$FirestoreChatImplCopyWith(
          _$FirestoreChatImpl value, $Res Function(_$FirestoreChatImpl) then) =
      __$$FirestoreChatImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      @JsonKey(toJson: _mapUsers) List<FirestoreChatUser> users,
      List<String> userIds,
      int? userIdsCount,
      @JsonKey(toJson: _mapLastMsg) FirestoreChatMessage? lastMsg,
      @FirestoreTimestampConverter() Object? lastMsgTimestamp,
      String? name});

  @override
  $FirestoreChatMessageCopyWith<$Res>? get lastMsg;
}

/// @nodoc
class __$$FirestoreChatImplCopyWithImpl<$Res>
    extends _$FirestoreChatCopyWithImpl<$Res, _$FirestoreChatImpl>
    implements _$$FirestoreChatImplCopyWith<$Res> {
  __$$FirestoreChatImplCopyWithImpl(
      _$FirestoreChatImpl _value, $Res Function(_$FirestoreChatImpl) _then)
      : super(_value, _then);

  /// Create a copy of FirestoreChat
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? users = null,
    Object? userIds = null,
    Object? userIdsCount = freezed,
    Object? lastMsg = freezed,
    Object? lastMsgTimestamp = freezed,
    Object? name = freezed,
  }) {
    return _then(_$FirestoreChatImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<FirestoreChatUser>,
      userIds: null == userIds
          ? _value._userIds
          : userIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      userIdsCount: freezed == userIdsCount
          ? _value.userIdsCount
          : userIdsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      lastMsg: freezed == lastMsg
          ? _value.lastMsg
          : lastMsg // ignore: cast_nullable_to_non_nullable
              as FirestoreChatMessage?,
      lastMsgTimestamp: freezed == lastMsgTimestamp
          ? _value.lastMsgTimestamp
          : lastMsgTimestamp,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FirestoreChatImpl extends _FirestoreChat {
  _$FirestoreChatImpl(
      {required this.id,
      @JsonKey(toJson: _mapUsers) required final List<FirestoreChatUser> users,
      required final List<String> userIds,
      this.userIdsCount,
      @JsonKey(toJson: _mapLastMsg) this.lastMsg,
      @FirestoreTimestampConverter() this.lastMsgTimestamp,
      this.name})
      : _users = users,
        _userIds = userIds,
        super._();

  factory _$FirestoreChatImpl.fromJson(Map<String, dynamic> json) =>
      _$$FirestoreChatImplFromJson(json);

  /// UUID
  @override
  final String id;

  /// Chat users
  final List<FirestoreChatUser> _users;

  /// Chat users
  @override
  @JsonKey(toJson: _mapUsers)
  List<FirestoreChatUser> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  /// Chat user IDs - used to filter out chats without logged user for new messages listener
  final List<String> _userIds;

  /// Chat user IDs - used to filter out chats without logged user for new messages listener
  @override
  List<String> get userIds {
    if (_userIds is EqualUnmodifiableListView) return _userIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_userIds);
  }

  /// Number of elements in [userIds] list
  @override
  final int? userIdsCount;

  /// Last message in chat
  @override
  @JsonKey(toJson: _mapLastMsg)
  final FirestoreChatMessage? lastMsg;

  /// Last message date to order by DESC by default
  @override
  @FirestoreTimestampConverter()
  final Object? lastMsgTimestamp;

  /// Custom name for group chats
  @override
  final String? name;

  @override
  String toString() {
    return 'FirestoreChat(id: $id, users: $users, userIds: $userIds, userIdsCount: $userIdsCount, lastMsg: $lastMsg, lastMsgTimestamp: $lastMsgTimestamp, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirestoreChatImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            const DeepCollectionEquality().equals(other._userIds, _userIds) &&
            (identical(other.userIdsCount, userIdsCount) ||
                other.userIdsCount == userIdsCount) &&
            (identical(other.lastMsg, lastMsg) || other.lastMsg == lastMsg) &&
            const DeepCollectionEquality()
                .equals(other.lastMsgTimestamp, lastMsgTimestamp) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_users),
      const DeepCollectionEquality().hash(_userIds),
      userIdsCount,
      lastMsg,
      const DeepCollectionEquality().hash(lastMsgTimestamp),
      name);

  /// Create a copy of FirestoreChat
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FirestoreChatImplCopyWith<_$FirestoreChatImpl> get copyWith =>
      __$$FirestoreChatImplCopyWithImpl<_$FirestoreChatImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FirestoreChatImplToJson(
      this,
    );
  }
}

abstract class _FirestoreChat extends FirestoreChat {
  factory _FirestoreChat(
      {required final String id,
      @JsonKey(toJson: _mapUsers) required final List<FirestoreChatUser> users,
      required final List<String> userIds,
      final int? userIdsCount,
      @JsonKey(toJson: _mapLastMsg) final FirestoreChatMessage? lastMsg,
      @FirestoreTimestampConverter() final Object? lastMsgTimestamp,
      final String? name}) = _$FirestoreChatImpl;
  _FirestoreChat._() : super._();

  factory _FirestoreChat.fromJson(Map<String, dynamic> json) =
      _$FirestoreChatImpl.fromJson;

  /// UUID
  @override
  String get id;

  /// Chat users
  @override
  @JsonKey(toJson: _mapUsers)
  List<FirestoreChatUser> get users;

  /// Chat user IDs - used to filter out chats without logged user for new messages listener
  @override
  List<String> get userIds;

  /// Number of elements in [userIds] list
  @override
  int? get userIdsCount;

  /// Last message in chat
  @override
  @JsonKey(toJson: _mapLastMsg)
  FirestoreChatMessage? get lastMsg;

  /// Last message date to order by DESC by default
  @override
  @FirestoreTimestampConverter()
  Object? get lastMsgTimestamp;

  /// Custom name for group chats
  @override
  String? get name;

  /// Create a copy of FirestoreChat
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FirestoreChatImplCopyWith<_$FirestoreChatImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
