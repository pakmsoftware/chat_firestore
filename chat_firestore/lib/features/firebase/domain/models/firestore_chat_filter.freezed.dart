// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'firestore_chat_filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FirestoreChatFilter {
  /// Chat users
  List<FirestoreUser> get users => throw _privateConstructorUsedError;

  /// Min age of chat users
  int? get minAge => throw _privateConstructorUsedError;

  /// Max age of chat users
  int? get maxAge => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FirestoreChatFilterCopyWith<FirestoreChatFilter> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirestoreChatFilterCopyWith<$Res> {
  factory $FirestoreChatFilterCopyWith(
          FirestoreChatFilter value, $Res Function(FirestoreChatFilter) then) =
      _$FirestoreChatFilterCopyWithImpl<$Res, FirestoreChatFilter>;
  @useResult
  $Res call({List<FirestoreUser> users, int? minAge, int? maxAge});
}

/// @nodoc
class _$FirestoreChatFilterCopyWithImpl<$Res, $Val extends FirestoreChatFilter>
    implements $FirestoreChatFilterCopyWith<$Res> {
  _$FirestoreChatFilterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
    Object? minAge = freezed,
    Object? maxAge = freezed,
  }) {
    return _then(_value.copyWith(
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<FirestoreUser>,
      minAge: freezed == minAge
          ? _value.minAge
          : minAge // ignore: cast_nullable_to_non_nullable
              as int?,
      maxAge: freezed == maxAge
          ? _value.maxAge
          : maxAge // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FirestoreChatFilterImplCopyWith<$Res>
    implements $FirestoreChatFilterCopyWith<$Res> {
  factory _$$FirestoreChatFilterImplCopyWith(_$FirestoreChatFilterImpl value,
          $Res Function(_$FirestoreChatFilterImpl) then) =
      __$$FirestoreChatFilterImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<FirestoreUser> users, int? minAge, int? maxAge});
}

/// @nodoc
class __$$FirestoreChatFilterImplCopyWithImpl<$Res>
    extends _$FirestoreChatFilterCopyWithImpl<$Res, _$FirestoreChatFilterImpl>
    implements _$$FirestoreChatFilterImplCopyWith<$Res> {
  __$$FirestoreChatFilterImplCopyWithImpl(_$FirestoreChatFilterImpl _value,
      $Res Function(_$FirestoreChatFilterImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? users = null,
    Object? minAge = freezed,
    Object? maxAge = freezed,
  }) {
    return _then(_$FirestoreChatFilterImpl(
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<FirestoreUser>,
      minAge: freezed == minAge
          ? _value.minAge
          : minAge // ignore: cast_nullable_to_non_nullable
              as int?,
      maxAge: freezed == maxAge
          ? _value.maxAge
          : maxAge // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$FirestoreChatFilterImpl extends _FirestoreChatFilter {
  _$FirestoreChatFilterImpl(
      {final List<FirestoreUser> users = const [], this.minAge, this.maxAge})
      : _users = users,
        super._();

  /// Chat users
  final List<FirestoreUser> _users;

  /// Chat users
  @override
  @JsonKey()
  List<FirestoreUser> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  /// Min age of chat users
  @override
  final int? minAge;

  /// Max age of chat users
  @override
  final int? maxAge;

  @override
  String toString() {
    return 'FirestoreChatFilter(users: $users, minAge: $minAge, maxAge: $maxAge)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirestoreChatFilterImpl &&
            const DeepCollectionEquality().equals(other._users, _users) &&
            (identical(other.minAge, minAge) || other.minAge == minAge) &&
            (identical(other.maxAge, maxAge) || other.maxAge == maxAge));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_users), minAge, maxAge);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FirestoreChatFilterImplCopyWith<_$FirestoreChatFilterImpl> get copyWith =>
      __$$FirestoreChatFilterImplCopyWithImpl<_$FirestoreChatFilterImpl>(
          this, _$identity);
}

abstract class _FirestoreChatFilter extends FirestoreChatFilter {
  factory _FirestoreChatFilter(
      {final List<FirestoreUser> users,
      final int? minAge,
      final int? maxAge}) = _$FirestoreChatFilterImpl;
  _FirestoreChatFilter._() : super._();

  @override

  /// Chat users
  List<FirestoreUser> get users;
  @override

  /// Min age of chat users
  int? get minAge;
  @override

  /// Max age of chat users
  int? get maxAge;
  @override
  @JsonKey(ignore: true)
  _$$FirestoreChatFilterImplCopyWith<_$FirestoreChatFilterImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
