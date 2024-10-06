// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'firestore_chat_filter_page_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FirestoreChatFilterPageState {
  /// Used filters
  FirestoreChatFilter get filters => throw _privateConstructorUsedError;
  FirestorePagedList<FirestoreUser> get users =>
      throw _privateConstructorUsedError;

  /// Create a copy of FirestoreChatFilterPageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FirestoreChatFilterPageStateCopyWith<FirestoreChatFilterPageState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirestoreChatFilterPageStateCopyWith<$Res> {
  factory $FirestoreChatFilterPageStateCopyWith(
          FirestoreChatFilterPageState value,
          $Res Function(FirestoreChatFilterPageState) then) =
      _$FirestoreChatFilterPageStateCopyWithImpl<$Res,
          FirestoreChatFilterPageState>;
  @useResult
  $Res call(
      {FirestoreChatFilter filters, FirestorePagedList<FirestoreUser> users});

  $FirestoreChatFilterCopyWith<$Res> get filters;
}

/// @nodoc
class _$FirestoreChatFilterPageStateCopyWithImpl<$Res,
        $Val extends FirestoreChatFilterPageState>
    implements $FirestoreChatFilterPageStateCopyWith<$Res> {
  _$FirestoreChatFilterPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FirestoreChatFilterPageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filters = null,
    Object? users = null,
  }) {
    return _then(_value.copyWith(
      filters: null == filters
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as FirestoreChatFilter,
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as FirestorePagedList<FirestoreUser>,
    ) as $Val);
  }

  /// Create a copy of FirestoreChatFilterPageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FirestoreChatFilterCopyWith<$Res> get filters {
    return $FirestoreChatFilterCopyWith<$Res>(_value.filters, (value) {
      return _then(_value.copyWith(filters: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FirestoreChatFilterPageStateImplCopyWith<$Res>
    implements $FirestoreChatFilterPageStateCopyWith<$Res> {
  factory _$$FirestoreChatFilterPageStateImplCopyWith(
          _$FirestoreChatFilterPageStateImpl value,
          $Res Function(_$FirestoreChatFilterPageStateImpl) then) =
      __$$FirestoreChatFilterPageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {FirestoreChatFilter filters, FirestorePagedList<FirestoreUser> users});

  @override
  $FirestoreChatFilterCopyWith<$Res> get filters;
}

/// @nodoc
class __$$FirestoreChatFilterPageStateImplCopyWithImpl<$Res>
    extends _$FirestoreChatFilterPageStateCopyWithImpl<$Res,
        _$FirestoreChatFilterPageStateImpl>
    implements _$$FirestoreChatFilterPageStateImplCopyWith<$Res> {
  __$$FirestoreChatFilterPageStateImplCopyWithImpl(
      _$FirestoreChatFilterPageStateImpl _value,
      $Res Function(_$FirestoreChatFilterPageStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of FirestoreChatFilterPageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filters = null,
    Object? users = null,
  }) {
    return _then(_$FirestoreChatFilterPageStateImpl(
      filters: null == filters
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as FirestoreChatFilter,
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as FirestorePagedList<FirestoreUser>,
    ));
  }
}

/// @nodoc

class _$FirestoreChatFilterPageStateImpl
    implements _FirestoreChatFilterPageState {
  _$FirestoreChatFilterPageStateImpl(
      {required this.filters, required this.users});

  /// Used filters
  @override
  final FirestoreChatFilter filters;
  @override
  final FirestorePagedList<FirestoreUser> users;

  @override
  String toString() {
    return 'FirestoreChatFilterPageState(filters: $filters, users: $users)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirestoreChatFilterPageStateImpl &&
            (identical(other.filters, filters) || other.filters == filters) &&
            (identical(other.users, users) || other.users == users));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filters, users);

  /// Create a copy of FirestoreChatFilterPageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FirestoreChatFilterPageStateImplCopyWith<
          _$FirestoreChatFilterPageStateImpl>
      get copyWith => __$$FirestoreChatFilterPageStateImplCopyWithImpl<
          _$FirestoreChatFilterPageStateImpl>(this, _$identity);
}

abstract class _FirestoreChatFilterPageState
    implements FirestoreChatFilterPageState {
  factory _FirestoreChatFilterPageState(
          {required final FirestoreChatFilter filters,
          required final FirestorePagedList<FirestoreUser> users}) =
      _$FirestoreChatFilterPageStateImpl;

  /// Used filters
  @override
  FirestoreChatFilter get filters;
  @override
  FirestorePagedList<FirestoreUser> get users;

  /// Create a copy of FirestoreChatFilterPageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FirestoreChatFilterPageStateImplCopyWith<
          _$FirestoreChatFilterPageStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
