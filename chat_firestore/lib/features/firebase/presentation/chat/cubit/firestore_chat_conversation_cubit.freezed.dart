// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'firestore_chat_conversation_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FirestoreChatConversationState {
  /// Loading messages on init
  bool get isLoadingData => throw _privateConstructorUsedError;

  /// Is fetching more messages
  bool get isFetchingMore => throw _privateConstructorUsedError;

  /// Is sending message
  bool get isSendingMessage => throw _privateConstructorUsedError;

  /// Paged list of messages
  FirestorePagedList<FirestoreChatMessage> get messages =>
      throw _privateConstructorUsedError;

  /// Receiver ids
  List<String> get receiverIds => throw _privateConstructorUsedError;

  /// Loaded chat from firestore
  FirestoreChat? get chat => throw _privateConstructorUsedError;

  /// Message content written in input
  String? get messageToSend => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FirestoreChatConversationStateCopyWith<FirestoreChatConversationState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirestoreChatConversationStateCopyWith<$Res> {
  factory $FirestoreChatConversationStateCopyWith(
          FirestoreChatConversationState value,
          $Res Function(FirestoreChatConversationState) then) =
      _$FirestoreChatConversationStateCopyWithImpl<$Res,
          FirestoreChatConversationState>;
  @useResult
  $Res call(
      {bool isLoadingData,
      bool isFetchingMore,
      bool isSendingMessage,
      FirestorePagedList<FirestoreChatMessage> messages,
      List<String> receiverIds,
      FirestoreChat? chat,
      String? messageToSend});

  $FirestoreChatCopyWith<$Res>? get chat;
}

/// @nodoc
class _$FirestoreChatConversationStateCopyWithImpl<$Res,
        $Val extends FirestoreChatConversationState>
    implements $FirestoreChatConversationStateCopyWith<$Res> {
  _$FirestoreChatConversationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoadingData = null,
    Object? isFetchingMore = null,
    Object? isSendingMessage = null,
    Object? messages = null,
    Object? receiverIds = null,
    Object? chat = freezed,
    Object? messageToSend = freezed,
  }) {
    return _then(_value.copyWith(
      isLoadingData: null == isLoadingData
          ? _value.isLoadingData
          : isLoadingData // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetchingMore: null == isFetchingMore
          ? _value.isFetchingMore
          : isFetchingMore // ignore: cast_nullable_to_non_nullable
              as bool,
      isSendingMessage: null == isSendingMessage
          ? _value.isSendingMessage
          : isSendingMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as FirestorePagedList<FirestoreChatMessage>,
      receiverIds: null == receiverIds
          ? _value.receiverIds
          : receiverIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      chat: freezed == chat
          ? _value.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as FirestoreChat?,
      messageToSend: freezed == messageToSend
          ? _value.messageToSend
          : messageToSend // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FirestoreChatCopyWith<$Res>? get chat {
    if (_value.chat == null) {
      return null;
    }

    return $FirestoreChatCopyWith<$Res>(_value.chat!, (value) {
      return _then(_value.copyWith(chat: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FirestoreChatConversationStateImplCopyWith<$Res>
    implements $FirestoreChatConversationStateCopyWith<$Res> {
  factory _$$FirestoreChatConversationStateImplCopyWith(
          _$FirestoreChatConversationStateImpl value,
          $Res Function(_$FirestoreChatConversationStateImpl) then) =
      __$$FirestoreChatConversationStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoadingData,
      bool isFetchingMore,
      bool isSendingMessage,
      FirestorePagedList<FirestoreChatMessage> messages,
      List<String> receiverIds,
      FirestoreChat? chat,
      String? messageToSend});

  @override
  $FirestoreChatCopyWith<$Res>? get chat;
}

/// @nodoc
class __$$FirestoreChatConversationStateImplCopyWithImpl<$Res>
    extends _$FirestoreChatConversationStateCopyWithImpl<$Res,
        _$FirestoreChatConversationStateImpl>
    implements _$$FirestoreChatConversationStateImplCopyWith<$Res> {
  __$$FirestoreChatConversationStateImplCopyWithImpl(
      _$FirestoreChatConversationStateImpl _value,
      $Res Function(_$FirestoreChatConversationStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoadingData = null,
    Object? isFetchingMore = null,
    Object? isSendingMessage = null,
    Object? messages = null,
    Object? receiverIds = null,
    Object? chat = freezed,
    Object? messageToSend = freezed,
  }) {
    return _then(_$FirestoreChatConversationStateImpl(
      isLoadingData: null == isLoadingData
          ? _value.isLoadingData
          : isLoadingData // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetchingMore: null == isFetchingMore
          ? _value.isFetchingMore
          : isFetchingMore // ignore: cast_nullable_to_non_nullable
              as bool,
      isSendingMessage: null == isSendingMessage
          ? _value.isSendingMessage
          : isSendingMessage // ignore: cast_nullable_to_non_nullable
              as bool,
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as FirestorePagedList<FirestoreChatMessage>,
      receiverIds: null == receiverIds
          ? _value._receiverIds
          : receiverIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      chat: freezed == chat
          ? _value.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as FirestoreChat?,
      messageToSend: freezed == messageToSend
          ? _value.messageToSend
          : messageToSend // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FirestoreChatConversationStateImpl
    implements _FirestoreChatConversationState {
  const _$FirestoreChatConversationStateImpl(
      {required this.isLoadingData,
      required this.isFetchingMore,
      required this.isSendingMessage,
      required this.messages,
      required final List<String> receiverIds,
      this.chat,
      this.messageToSend})
      : _receiverIds = receiverIds;

  /// Loading messages on init
  @override
  final bool isLoadingData;

  /// Is fetching more messages
  @override
  final bool isFetchingMore;

  /// Is sending message
  @override
  final bool isSendingMessage;

  /// Paged list of messages
  @override
  final FirestorePagedList<FirestoreChatMessage> messages;

  /// Receiver ids
  final List<String> _receiverIds;

  /// Receiver ids
  @override
  List<String> get receiverIds {
    if (_receiverIds is EqualUnmodifiableListView) return _receiverIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_receiverIds);
  }

  /// Loaded chat from firestore
  @override
  final FirestoreChat? chat;

  /// Message content written in input
  @override
  final String? messageToSend;

  @override
  String toString() {
    return 'FirestoreChatConversationState(isLoadingData: $isLoadingData, isFetchingMore: $isFetchingMore, isSendingMessage: $isSendingMessage, messages: $messages, receiverIds: $receiverIds, chat: $chat, messageToSend: $messageToSend)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirestoreChatConversationStateImpl &&
            (identical(other.isLoadingData, isLoadingData) ||
                other.isLoadingData == isLoadingData) &&
            (identical(other.isFetchingMore, isFetchingMore) ||
                other.isFetchingMore == isFetchingMore) &&
            (identical(other.isSendingMessage, isSendingMessage) ||
                other.isSendingMessage == isSendingMessage) &&
            (identical(other.messages, messages) ||
                other.messages == messages) &&
            const DeepCollectionEquality()
                .equals(other._receiverIds, _receiverIds) &&
            (identical(other.chat, chat) || other.chat == chat) &&
            (identical(other.messageToSend, messageToSend) ||
                other.messageToSend == messageToSend));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoadingData,
      isFetchingMore,
      isSendingMessage,
      messages,
      const DeepCollectionEquality().hash(_receiverIds),
      chat,
      messageToSend);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FirestoreChatConversationStateImplCopyWith<
          _$FirestoreChatConversationStateImpl>
      get copyWith => __$$FirestoreChatConversationStateImplCopyWithImpl<
          _$FirestoreChatConversationStateImpl>(this, _$identity);
}

abstract class _FirestoreChatConversationState
    implements FirestoreChatConversationState {
  const factory _FirestoreChatConversationState(
      {required final bool isLoadingData,
      required final bool isFetchingMore,
      required final bool isSendingMessage,
      required final FirestorePagedList<FirestoreChatMessage> messages,
      required final List<String> receiverIds,
      final FirestoreChat? chat,
      final String? messageToSend}) = _$FirestoreChatConversationStateImpl;

  @override

  /// Loading messages on init
  bool get isLoadingData;
  @override

  /// Is fetching more messages
  bool get isFetchingMore;
  @override

  /// Is sending message
  bool get isSendingMessage;
  @override

  /// Paged list of messages
  FirestorePagedList<FirestoreChatMessage> get messages;
  @override

  /// Receiver ids
  List<String> get receiverIds;
  @override

  /// Loaded chat from firestore
  FirestoreChat? get chat;
  @override

  /// Message content written in input
  String? get messageToSend;
  @override
  @JsonKey(ignore: true)
  _$$FirestoreChatConversationStateImplCopyWith<
          _$FirestoreChatConversationStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
