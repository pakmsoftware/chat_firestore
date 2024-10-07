// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'firestore_create_group_chat_page_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FirestoreCreateGroupChatPageState {
  String? get chatName => throw _privateConstructorUsedError;

  /// Create a copy of FirestoreCreateGroupChatPageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FirestoreCreateGroupChatPageStateCopyWith<FirestoreCreateGroupChatPageState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirestoreCreateGroupChatPageStateCopyWith<$Res> {
  factory $FirestoreCreateGroupChatPageStateCopyWith(
          FirestoreCreateGroupChatPageState value,
          $Res Function(FirestoreCreateGroupChatPageState) then) =
      _$FirestoreCreateGroupChatPageStateCopyWithImpl<$Res,
          FirestoreCreateGroupChatPageState>;
  @useResult
  $Res call({String? chatName});
}

/// @nodoc
class _$FirestoreCreateGroupChatPageStateCopyWithImpl<$Res,
        $Val extends FirestoreCreateGroupChatPageState>
    implements $FirestoreCreateGroupChatPageStateCopyWith<$Res> {
  _$FirestoreCreateGroupChatPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FirestoreCreateGroupChatPageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatName = freezed,
  }) {
    return _then(_value.copyWith(
      chatName: freezed == chatName
          ? _value.chatName
          : chatName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FirestoreCreateGroupChatPageStateImplCopyWith<$Res>
    implements $FirestoreCreateGroupChatPageStateCopyWith<$Res> {
  factory _$$FirestoreCreateGroupChatPageStateImplCopyWith(
          _$FirestoreCreateGroupChatPageStateImpl value,
          $Res Function(_$FirestoreCreateGroupChatPageStateImpl) then) =
      __$$FirestoreCreateGroupChatPageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? chatName});
}

/// @nodoc
class __$$FirestoreCreateGroupChatPageStateImplCopyWithImpl<$Res>
    extends _$FirestoreCreateGroupChatPageStateCopyWithImpl<$Res,
        _$FirestoreCreateGroupChatPageStateImpl>
    implements _$$FirestoreCreateGroupChatPageStateImplCopyWith<$Res> {
  __$$FirestoreCreateGroupChatPageStateImplCopyWithImpl(
      _$FirestoreCreateGroupChatPageStateImpl _value,
      $Res Function(_$FirestoreCreateGroupChatPageStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of FirestoreCreateGroupChatPageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatName = freezed,
  }) {
    return _then(_$FirestoreCreateGroupChatPageStateImpl(
      chatName: freezed == chatName
          ? _value.chatName
          : chatName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FirestoreCreateGroupChatPageStateImpl
    implements _FirestoreCreateGroupChatPageState {
  _$FirestoreCreateGroupChatPageStateImpl({this.chatName});

  @override
  final String? chatName;

  @override
  String toString() {
    return 'FirestoreCreateGroupChatPageState(chatName: $chatName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirestoreCreateGroupChatPageStateImpl &&
            (identical(other.chatName, chatName) ||
                other.chatName == chatName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chatName);

  /// Create a copy of FirestoreCreateGroupChatPageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FirestoreCreateGroupChatPageStateImplCopyWith<
          _$FirestoreCreateGroupChatPageStateImpl>
      get copyWith => __$$FirestoreCreateGroupChatPageStateImplCopyWithImpl<
          _$FirestoreCreateGroupChatPageStateImpl>(this, _$identity);
}

abstract class _FirestoreCreateGroupChatPageState
    implements FirestoreCreateGroupChatPageState {
  factory _FirestoreCreateGroupChatPageState({final String? chatName}) =
      _$FirestoreCreateGroupChatPageStateImpl;

  @override
  String? get chatName;

  /// Create a copy of FirestoreCreateGroupChatPageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FirestoreCreateGroupChatPageStateImplCopyWith<
          _$FirestoreCreateGroupChatPageStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
