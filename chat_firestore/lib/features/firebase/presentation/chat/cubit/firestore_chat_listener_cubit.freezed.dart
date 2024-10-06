// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'firestore_chat_listener_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FirestoreChatListenerState {
  /// Newest message chat received
  FirestoreChat? get receivedChat => throw _privateConstructorUsedError;

  /// Create a copy of FirestoreChatListenerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FirestoreChatListenerStateCopyWith<FirestoreChatListenerState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirestoreChatListenerStateCopyWith<$Res> {
  factory $FirestoreChatListenerStateCopyWith(FirestoreChatListenerState value,
          $Res Function(FirestoreChatListenerState) then) =
      _$FirestoreChatListenerStateCopyWithImpl<$Res,
          FirestoreChatListenerState>;
  @useResult
  $Res call({FirestoreChat? receivedChat});

  $FirestoreChatCopyWith<$Res>? get receivedChat;
}

/// @nodoc
class _$FirestoreChatListenerStateCopyWithImpl<$Res,
        $Val extends FirestoreChatListenerState>
    implements $FirestoreChatListenerStateCopyWith<$Res> {
  _$FirestoreChatListenerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FirestoreChatListenerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? receivedChat = freezed,
  }) {
    return _then(_value.copyWith(
      receivedChat: freezed == receivedChat
          ? _value.receivedChat
          : receivedChat // ignore: cast_nullable_to_non_nullable
              as FirestoreChat?,
    ) as $Val);
  }

  /// Create a copy of FirestoreChatListenerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FirestoreChatCopyWith<$Res>? get receivedChat {
    if (_value.receivedChat == null) {
      return null;
    }

    return $FirestoreChatCopyWith<$Res>(_value.receivedChat!, (value) {
      return _then(_value.copyWith(receivedChat: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FirestoreChatListenerStateImplCopyWith<$Res>
    implements $FirestoreChatListenerStateCopyWith<$Res> {
  factory _$$FirestoreChatListenerStateImplCopyWith(
          _$FirestoreChatListenerStateImpl value,
          $Res Function(_$FirestoreChatListenerStateImpl) then) =
      __$$FirestoreChatListenerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FirestoreChat? receivedChat});

  @override
  $FirestoreChatCopyWith<$Res>? get receivedChat;
}

/// @nodoc
class __$$FirestoreChatListenerStateImplCopyWithImpl<$Res>
    extends _$FirestoreChatListenerStateCopyWithImpl<$Res,
        _$FirestoreChatListenerStateImpl>
    implements _$$FirestoreChatListenerStateImplCopyWith<$Res> {
  __$$FirestoreChatListenerStateImplCopyWithImpl(
      _$FirestoreChatListenerStateImpl _value,
      $Res Function(_$FirestoreChatListenerStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of FirestoreChatListenerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? receivedChat = freezed,
  }) {
    return _then(_$FirestoreChatListenerStateImpl(
      receivedChat: freezed == receivedChat
          ? _value.receivedChat
          : receivedChat // ignore: cast_nullable_to_non_nullable
              as FirestoreChat?,
    ));
  }
}

/// @nodoc

class _$FirestoreChatListenerStateImpl implements _FirestoreChatListenerState {
  _$FirestoreChatListenerStateImpl({this.receivedChat});

  /// Newest message chat received
  @override
  final FirestoreChat? receivedChat;

  @override
  String toString() {
    return 'FirestoreChatListenerState(receivedChat: $receivedChat)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirestoreChatListenerStateImpl &&
            (identical(other.receivedChat, receivedChat) ||
                other.receivedChat == receivedChat));
  }

  @override
  int get hashCode => Object.hash(runtimeType, receivedChat);

  /// Create a copy of FirestoreChatListenerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FirestoreChatListenerStateImplCopyWith<_$FirestoreChatListenerStateImpl>
      get copyWith => __$$FirestoreChatListenerStateImplCopyWithImpl<
          _$FirestoreChatListenerStateImpl>(this, _$identity);
}

abstract class _FirestoreChatListenerState
    implements FirestoreChatListenerState {
  factory _FirestoreChatListenerState({final FirestoreChat? receivedChat}) =
      _$FirestoreChatListenerStateImpl;

  /// Newest message chat received
  @override
  FirestoreChat? get receivedChat;

  /// Create a copy of FirestoreChatListenerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FirestoreChatListenerStateImplCopyWith<_$FirestoreChatListenerStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
