// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'firestore_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FirestoreUser _$FirestoreUserFromJson(Map<String, dynamic> json) {
  return _FirestoreUser.fromJson(json);
}

/// @nodoc
mixin _$FirestoreUser {
  /// ID of user
  String get id => throw _privateConstructorUsedError;

  /// First name of user
  String get name => throw _privateConstructorUsedError;

  /// Last name of user
  String get surname => throw _privateConstructorUsedError;

  /// When user was created in firestore
  DateTime get createdDate => throw _privateConstructorUsedError;

  /// Full name in lowercase used for autocomplete search
  String? get fullNameLower => throw _privateConstructorUsedError;

  /// Path to firebase storage avatar file
  String? get avatar => throw _privateConstructorUsedError;

  /// User's age
  int? get age => throw _privateConstructorUsedError;

  /// User's height in centimeters
  int? get height => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FirestoreUserCopyWith<FirestoreUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirestoreUserCopyWith<$Res> {
  factory $FirestoreUserCopyWith(
          FirestoreUser value, $Res Function(FirestoreUser) then) =
      _$FirestoreUserCopyWithImpl<$Res, FirestoreUser>;
  @useResult
  $Res call(
      {String id,
      String name,
      String surname,
      DateTime createdDate,
      String? fullNameLower,
      String? avatar,
      int? age,
      int? height});
}

/// @nodoc
class _$FirestoreUserCopyWithImpl<$Res, $Val extends FirestoreUser>
    implements $FirestoreUserCopyWith<$Res> {
  _$FirestoreUserCopyWithImpl(this._value, this._then);

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
    Object? createdDate = null,
    Object? fullNameLower = freezed,
    Object? avatar = freezed,
    Object? age = freezed,
    Object? height = freezed,
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
      createdDate: null == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      fullNameLower: freezed == fullNameLower
          ? _value.fullNameLower
          : fullNameLower // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FirestoreUserImplCopyWith<$Res>
    implements $FirestoreUserCopyWith<$Res> {
  factory _$$FirestoreUserImplCopyWith(
          _$FirestoreUserImpl value, $Res Function(_$FirestoreUserImpl) then) =
      __$$FirestoreUserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String surname,
      DateTime createdDate,
      String? fullNameLower,
      String? avatar,
      int? age,
      int? height});
}

/// @nodoc
class __$$FirestoreUserImplCopyWithImpl<$Res>
    extends _$FirestoreUserCopyWithImpl<$Res, _$FirestoreUserImpl>
    implements _$$FirestoreUserImplCopyWith<$Res> {
  __$$FirestoreUserImplCopyWithImpl(
      _$FirestoreUserImpl _value, $Res Function(_$FirestoreUserImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? surname = null,
    Object? createdDate = null,
    Object? fullNameLower = freezed,
    Object? avatar = freezed,
    Object? age = freezed,
    Object? height = freezed,
  }) {
    return _then(_$FirestoreUserImpl(
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
      createdDate: null == createdDate
          ? _value.createdDate
          : createdDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      fullNameLower: freezed == fullNameLower
          ? _value.fullNameLower
          : fullNameLower // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: freezed == avatar
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FirestoreUserImpl extends _FirestoreUser {
  _$FirestoreUserImpl(
      {required this.id,
      required this.name,
      required this.surname,
      required this.createdDate,
      this.fullNameLower,
      this.avatar,
      this.age,
      this.height})
      : super._();

  factory _$FirestoreUserImpl.fromJson(Map<String, dynamic> json) =>
      _$$FirestoreUserImplFromJson(json);

  /// ID of user
  @override
  final String id;

  /// First name of user
  @override
  final String name;

  /// Last name of user
  @override
  final String surname;

  /// When user was created in firestore
  @override
  final DateTime createdDate;

  /// Full name in lowercase used for autocomplete search
  @override
  final String? fullNameLower;

  /// Path to firebase storage avatar file
  @override
  final String? avatar;

  /// User's age
  @override
  final int? age;

  /// User's height in centimeters
  @override
  final int? height;

  @override
  String toString() {
    return 'FirestoreUser(id: $id, name: $name, surname: $surname, createdDate: $createdDate, fullNameLower: $fullNameLower, avatar: $avatar, age: $age, height: $height)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirestoreUserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.surname, surname) || other.surname == surname) &&
            (identical(other.createdDate, createdDate) ||
                other.createdDate == createdDate) &&
            (identical(other.fullNameLower, fullNameLower) ||
                other.fullNameLower == fullNameLower) &&
            (identical(other.avatar, avatar) || other.avatar == avatar) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.height, height) || other.height == height));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, surname, createdDate,
      fullNameLower, avatar, age, height);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FirestoreUserImplCopyWith<_$FirestoreUserImpl> get copyWith =>
      __$$FirestoreUserImplCopyWithImpl<_$FirestoreUserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FirestoreUserImplToJson(
      this,
    );
  }
}

abstract class _FirestoreUser extends FirestoreUser {
  factory _FirestoreUser(
      {required final String id,
      required final String name,
      required final String surname,
      required final DateTime createdDate,
      final String? fullNameLower,
      final String? avatar,
      final int? age,
      final int? height}) = _$FirestoreUserImpl;
  _FirestoreUser._() : super._();

  factory _FirestoreUser.fromJson(Map<String, dynamic> json) =
      _$FirestoreUserImpl.fromJson;

  @override

  /// ID of user
  String get id;
  @override

  /// First name of user
  String get name;
  @override

  /// Last name of user
  String get surname;
  @override

  /// When user was created in firestore
  DateTime get createdDate;
  @override

  /// Full name in lowercase used for autocomplete search
  String? get fullNameLower;
  @override

  /// Path to firebase storage avatar file
  String? get avatar;
  @override

  /// User's age
  int? get age;
  @override

  /// User's height in centimeters
  int? get height;
  @override
  @JsonKey(ignore: true)
  _$$FirestoreUserImplCopyWith<_$FirestoreUserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
