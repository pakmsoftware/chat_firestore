// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'firestore_chat_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FirestoreChatUser _$FirestoreChatUserFromJson(Map<String, dynamic> json) {
  return _FirestoreChatUser.fromJson(json);
}

/// @nodoc
mixin _$FirestoreChatUser {
  /// UUID
  String get id => throw _privateConstructorUsedError;

  /// First name
  String get name => throw _privateConstructorUsedError;

  /// Last name
  String get surname => throw _privateConstructorUsedError;

  /// Avatar URL
  String? get avatar => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FirestoreChatUserCopyWith<FirestoreChatUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirestoreChatUserCopyWith<$Res> {
  factory $FirestoreChatUserCopyWith(
          FirestoreChatUser value, $Res Function(FirestoreChatUser) then) =
      _$FirestoreChatUserCopyWithImpl<$Res, FirestoreChatUser>;
  @useResult
  $Res call({String id, String name, String surname, String? avatar});
}

/// @nodoc
class _$FirestoreChatUserCopyWithImpl<$Res, $Val extends FirestoreChatUser>
    implements $FirestoreChatUserCopyWith<$Res> {
  _$FirestoreChatUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? surname = null,
    Object? avatar = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      surname: null == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FirestoreChatUserImplCopyWith<$Res>
    implements $FirestoreChatUserCopyWith<$Res> {
  factory _$$FirestoreChatUserImplCopyWith(_$FirestoreChatUserImpl value,
          $Res Function(_$FirestoreChatUserImpl) then) =
      __$$FirestoreChatUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, String surname, String? avatar});
}

/// @nodoc
class __$$FirestoreChatUserImplCopyWithImpl<$Res>
    extends _$FirestoreChatUserCopyWithImpl<$Res, _$FirestoreChatUserImpl>
    implements _$$FirestoreChatUserImplCopyWith<$Res> {
  __$$FirestoreChatUserImplCopyWithImpl(_$FirestoreChatUserImpl _value,
      $Res Function(_$FirestoreChatUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? surname = null,
    Object? avatar = freezed,
  }) {
    return _then(_$FirestoreChatUserImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      surname: null == surname
          ? _value.surname
          : surname // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FirestoreChatUserImpl extends _FirestoreChatUser {
  _$FirestoreChatUserImpl(
      {required this.id,
      required this.name,
      required this.surname,
      this.avatar})
      : super._();

  factory _$FirestoreChatUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$FirestoreChatUserImplFromJson(json);

  /// UUID
  @override
  final String id;

  /// First name
  @override
  final String name;

  /// Last name
  @override
  final String surname;

  /// Avatar URL
  @override
  final String? avatar;

  @override
  String toString() {
    return 'FirestoreChatUser(id: $id, name: $name, surname: $surname, avatar: $avatar)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirestoreChatUserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.surname, surname) || other.surname == surname) &&
            (identical(other.avatar, avatar) || other.avatar == avatar));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, surname, avatar);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FirestoreChatUserImplCopyWith<_$FirestoreChatUserImpl> get copyWith =>
      __$$FirestoreChatUserImplCopyWithImpl<_$FirestoreChatUserImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FirestoreChatUserImplToJson(
      this,
    );
  }
}

abstract class _FirestoreChatUser extends FirestoreChatUser {
  factory _FirestoreChatUser(
      {required final String id,
      required final String name,
      required final String surname,
      final String? avatar}) = _$FirestoreChatUserImpl;
  _FirestoreChatUser._() : super._();

  factory _FirestoreChatUser.fromJson(Map<String, dynamic> json) =
      _$FirestoreChatUserImpl.fromJson;

  @override

  /// UUID
  String get id;
  @override

  /// First name
  String get name;
  @override

  /// Last name
  String get surname;
  @override

  /// Avatar URL
  String? get avatar;
  @override
  @JsonKey(ignore: true)
  _$$FirestoreChatUserImplCopyWith<_$FirestoreChatUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
