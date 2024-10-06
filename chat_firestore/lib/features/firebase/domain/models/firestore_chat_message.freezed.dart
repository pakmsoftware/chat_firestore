// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'firestore_chat_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FirestoreChatMessage _$FirestoreChatMessageFromJson(Map<String, dynamic> json) {
  return _FirestoreChatMessage.fromJson(json);
}

/// @nodoc
mixin _$FirestoreChatMessage {
  /// UUID
  String get id => throw _privateConstructorUsedError;

  /// Message text content
  String get content => throw _privateConstructorUsedError;

  /// Date of message
  DateTime get timestamp => throw _privateConstructorUsedError;

  /// Sender UUID
  String get senderId => throw _privateConstructorUsedError;

  /// Chat UUID
  String get chatId => throw _privateConstructorUsedError;

  /// Message receivers
  @JsonKey(toJson: _mapReceivers)
  List<FirestoreChatMessageReceiver> get receivers =>
      throw _privateConstructorUsedError;

  /// Status of message. Valid and shown only for message sender
  @JsonKey(includeToJson: false, includeFromJson: false)
  FirestoreChatMessageStatus get status => throw _privateConstructorUsedError;

  /// Serializes this FirestoreChatMessage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FirestoreChatMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FirestoreChatMessageCopyWith<FirestoreChatMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirestoreChatMessageCopyWith<$Res> {
  factory $FirestoreChatMessageCopyWith(FirestoreChatMessage value,
          $Res Function(FirestoreChatMessage) then) =
      _$FirestoreChatMessageCopyWithImpl<$Res, FirestoreChatMessage>;
  @useResult
  $Res call(
      {String id,
      String content,
      DateTime timestamp,
      String senderId,
      String chatId,
      @JsonKey(toJson: _mapReceivers)
      List<FirestoreChatMessageReceiver> receivers,
      @JsonKey(includeToJson: false, includeFromJson: false)
      FirestoreChatMessageStatus status});
}

/// @nodoc
class _$FirestoreChatMessageCopyWithImpl<$Res,
        $Val extends FirestoreChatMessage>
    implements $FirestoreChatMessageCopyWith<$Res> {
  _$FirestoreChatMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FirestoreChatMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? content = null,
    Object? timestamp = null,
    Object? senderId = null,
    Object? chatId = null,
    Object? receivers = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      senderId: null == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String,
      chatId: null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String,
      receivers: null == receivers
          ? _value.receivers
          : receivers // ignore: cast_nullable_to_non_nullable
              as List<FirestoreChatMessageReceiver>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FirestoreChatMessageStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FirestoreChatMessageImplCopyWith<$Res>
    implements $FirestoreChatMessageCopyWith<$Res> {
  factory _$$FirestoreChatMessageImplCopyWith(_$FirestoreChatMessageImpl value,
          $Res Function(_$FirestoreChatMessageImpl) then) =
      __$$FirestoreChatMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String content,
      DateTime timestamp,
      String senderId,
      String chatId,
      @JsonKey(toJson: _mapReceivers)
      List<FirestoreChatMessageReceiver> receivers,
      @JsonKey(includeToJson: false, includeFromJson: false)
      FirestoreChatMessageStatus status});
}

/// @nodoc
class __$$FirestoreChatMessageImplCopyWithImpl<$Res>
    extends _$FirestoreChatMessageCopyWithImpl<$Res, _$FirestoreChatMessageImpl>
    implements _$$FirestoreChatMessageImplCopyWith<$Res> {
  __$$FirestoreChatMessageImplCopyWithImpl(_$FirestoreChatMessageImpl _value,
      $Res Function(_$FirestoreChatMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of FirestoreChatMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? content = null,
    Object? timestamp = null,
    Object? senderId = null,
    Object? chatId = null,
    Object? receivers = null,
    Object? status = null,
  }) {
    return _then(_$FirestoreChatMessageImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      senderId: null == senderId
          ? _value.senderId
          : senderId // ignore: cast_nullable_to_non_nullable
              as String,
      chatId: null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String,
      receivers: null == receivers
          ? _value._receivers
          : receivers // ignore: cast_nullable_to_non_nullable
              as List<FirestoreChatMessageReceiver>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FirestoreChatMessageStatus,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FirestoreChatMessageImpl extends _FirestoreChatMessage {
  _$FirestoreChatMessageImpl(
      {required this.id,
      required this.content,
      required this.timestamp,
      required this.senderId,
      required this.chatId,
      @JsonKey(toJson: _mapReceivers)
      required final List<FirestoreChatMessageReceiver> receivers,
      @JsonKey(includeToJson: false, includeFromJson: false)
      this.status = FirestoreChatMessageStatus.sent})
      : _receivers = receivers,
        super._();

  factory _$FirestoreChatMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$FirestoreChatMessageImplFromJson(json);

  /// UUID
  @override
  final String id;

  /// Message text content
  @override
  final String content;

  /// Date of message
  @override
  final DateTime timestamp;

  /// Sender UUID
  @override
  final String senderId;

  /// Chat UUID
  @override
  final String chatId;

  /// Message receivers
  final List<FirestoreChatMessageReceiver> _receivers;

  /// Message receivers
  @override
  @JsonKey(toJson: _mapReceivers)
  List<FirestoreChatMessageReceiver> get receivers {
    if (_receivers is EqualUnmodifiableListView) return _receivers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_receivers);
  }

  /// Status of message. Valid and shown only for message sender
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  final FirestoreChatMessageStatus status;

  @override
  String toString() {
    return 'FirestoreChatMessage(id: $id, content: $content, timestamp: $timestamp, senderId: $senderId, chatId: $chatId, receivers: $receivers, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirestoreChatMessageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.senderId, senderId) ||
                other.senderId == senderId) &&
            (identical(other.chatId, chatId) || other.chatId == chatId) &&
            const DeepCollectionEquality()
                .equals(other._receivers, _receivers) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, content, timestamp, senderId,
      chatId, const DeepCollectionEquality().hash(_receivers), status);

  /// Create a copy of FirestoreChatMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FirestoreChatMessageImplCopyWith<_$FirestoreChatMessageImpl>
      get copyWith =>
          __$$FirestoreChatMessageImplCopyWithImpl<_$FirestoreChatMessageImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FirestoreChatMessageImplToJson(
      this,
    );
  }
}

abstract class _FirestoreChatMessage extends FirestoreChatMessage {
  factory _FirestoreChatMessage(
      {required final String id,
      required final String content,
      required final DateTime timestamp,
      required final String senderId,
      required final String chatId,
      @JsonKey(toJson: _mapReceivers)
      required final List<FirestoreChatMessageReceiver> receivers,
      @JsonKey(includeToJson: false, includeFromJson: false)
      final FirestoreChatMessageStatus status}) = _$FirestoreChatMessageImpl;
  _FirestoreChatMessage._() : super._();

  factory _FirestoreChatMessage.fromJson(Map<String, dynamic> json) =
      _$FirestoreChatMessageImpl.fromJson;

  /// UUID
  @override
  String get id;

  /// Message text content
  @override
  String get content;

  /// Date of message
  @override
  DateTime get timestamp;

  /// Sender UUID
  @override
  String get senderId;

  /// Chat UUID
  @override
  String get chatId;

  /// Message receivers
  @override
  @JsonKey(toJson: _mapReceivers)
  List<FirestoreChatMessageReceiver> get receivers;

  /// Status of message. Valid and shown only for message sender
  @override
  @JsonKey(includeToJson: false, includeFromJson: false)
  FirestoreChatMessageStatus get status;

  /// Create a copy of FirestoreChatMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FirestoreChatMessageImplCopyWith<_$FirestoreChatMessageImpl>
      get copyWith => throw _privateConstructorUsedError;
}
