// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'firestore_chat_message_receiver.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FirestoreChatMessageReceiver _$FirestoreChatMessageReceiverFromJson(
    Map<String, dynamic> json) {
  return _FirestoreChatMessageReceiver.fromJson(json);
}

/// @nodoc
mixin _$FirestoreChatMessageReceiver {
  /// User UUID
  String get userId => throw _privateConstructorUsedError;

  /// Flag that determines if message was read by [userId]
  bool get isRead => throw _privateConstructorUsedError;

  /// Serializes this FirestoreChatMessageReceiver to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FirestoreChatMessageReceiver
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FirestoreChatMessageReceiverCopyWith<FirestoreChatMessageReceiver>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirestoreChatMessageReceiverCopyWith<$Res> {
  factory $FirestoreChatMessageReceiverCopyWith(
          FirestoreChatMessageReceiver value,
          $Res Function(FirestoreChatMessageReceiver) then) =
      _$FirestoreChatMessageReceiverCopyWithImpl<$Res,
          FirestoreChatMessageReceiver>;
  @useResult
  $Res call({String userId, bool isRead});
}

/// @nodoc
class _$FirestoreChatMessageReceiverCopyWithImpl<$Res,
        $Val extends FirestoreChatMessageReceiver>
    implements $FirestoreChatMessageReceiverCopyWith<$Res> {
  _$FirestoreChatMessageReceiverCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FirestoreChatMessageReceiver
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? isRead = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      isRead: null == isRead
          ? _value.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FirestoreChatMessageReceiverImplCopyWith<$Res>
    implements $FirestoreChatMessageReceiverCopyWith<$Res> {
  factory _$$FirestoreChatMessageReceiverImplCopyWith(
          _$FirestoreChatMessageReceiverImpl value,
          $Res Function(_$FirestoreChatMessageReceiverImpl) then) =
      __$$FirestoreChatMessageReceiverImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String userId, bool isRead});
}

/// @nodoc
class __$$FirestoreChatMessageReceiverImplCopyWithImpl<$Res>
    extends _$FirestoreChatMessageReceiverCopyWithImpl<$Res,
        _$FirestoreChatMessageReceiverImpl>
    implements _$$FirestoreChatMessageReceiverImplCopyWith<$Res> {
  __$$FirestoreChatMessageReceiverImplCopyWithImpl(
      _$FirestoreChatMessageReceiverImpl _value,
      $Res Function(_$FirestoreChatMessageReceiverImpl) _then)
      : super(_value, _then);

  /// Create a copy of FirestoreChatMessageReceiver
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? isRead = null,
  }) {
    return _then(_$FirestoreChatMessageReceiverImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      isRead: null == isRead
          ? _value.isRead
          : isRead // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FirestoreChatMessageReceiverImpl
    implements _FirestoreChatMessageReceiver {
  _$FirestoreChatMessageReceiverImpl(
      {required this.userId, required this.isRead});

  factory _$FirestoreChatMessageReceiverImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$FirestoreChatMessageReceiverImplFromJson(json);

  /// User UUID
  @override
  final String userId;

  /// Flag that determines if message was read by [userId]
  @override
  final bool isRead;

  @override
  String toString() {
    return 'FirestoreChatMessageReceiver(userId: $userId, isRead: $isRead)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirestoreChatMessageReceiverImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.isRead, isRead) || other.isRead == isRead));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, isRead);

  /// Create a copy of FirestoreChatMessageReceiver
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FirestoreChatMessageReceiverImplCopyWith<
          _$FirestoreChatMessageReceiverImpl>
      get copyWith => __$$FirestoreChatMessageReceiverImplCopyWithImpl<
          _$FirestoreChatMessageReceiverImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FirestoreChatMessageReceiverImplToJson(
      this,
    );
  }
}

abstract class _FirestoreChatMessageReceiver
    implements FirestoreChatMessageReceiver {
  factory _FirestoreChatMessageReceiver(
      {required final String userId,
      required final bool isRead}) = _$FirestoreChatMessageReceiverImpl;

  factory _FirestoreChatMessageReceiver.fromJson(Map<String, dynamic> json) =
      _$FirestoreChatMessageReceiverImpl.fromJson;

  /// User UUID
  @override
  String get userId;

  /// Flag that determines if message was read by [userId]
  @override
  bool get isRead;

  /// Create a copy of FirestoreChatMessageReceiver
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FirestoreChatMessageReceiverImplCopyWith<
          _$FirestoreChatMessageReceiverImpl>
      get copyWith => throw _privateConstructorUsedError;
}
