// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'firestore_user_filter_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FirestoreUserFilterRequest _$FirestoreUserFilterRequestFromJson(
    Map<String, dynamic> json) {
  return _FirestoreUserFilterRequest.fromJson(json);
}

/// @nodoc
mixin _$FirestoreUserFilterRequest {
  /// Query for name and surname. Works like .startsWith for user's full name (name OR surname)
  String? get nameQuery => throw _privateConstructorUsedError;

  /// Minimal age for users inclusive
  int? get minAge => throw _privateConstructorUsedError;

  /// Maximal age of users inclusive
  int? get maxAge => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FirestoreUserFilterRequestCopyWith<FirestoreUserFilterRequest>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirestoreUserFilterRequestCopyWith<$Res> {
  factory $FirestoreUserFilterRequestCopyWith(FirestoreUserFilterRequest value,
          $Res Function(FirestoreUserFilterRequest) then) =
      _$FirestoreUserFilterRequestCopyWithImpl<$Res,
          FirestoreUserFilterRequest>;
  @useResult
  $Res call({String? nameQuery, int? minAge, int? maxAge});
}

/// @nodoc
class _$FirestoreUserFilterRequestCopyWithImpl<$Res,
        $Val extends FirestoreUserFilterRequest>
    implements $FirestoreUserFilterRequestCopyWith<$Res> {
  _$FirestoreUserFilterRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nameQuery = freezed,
    Object? minAge = freezed,
    Object? maxAge = freezed,
  }) {
    return _then(_value.copyWith(
      nameQuery: freezed == nameQuery
          ? _value.nameQuery
          : nameQuery // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$FirestoreUserFilterRequestImplCopyWith<$Res>
    implements $FirestoreUserFilterRequestCopyWith<$Res> {
  factory _$$FirestoreUserFilterRequestImplCopyWith(
          _$FirestoreUserFilterRequestImpl value,
          $Res Function(_$FirestoreUserFilterRequestImpl) then) =
      __$$FirestoreUserFilterRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? nameQuery, int? minAge, int? maxAge});
}

/// @nodoc
class __$$FirestoreUserFilterRequestImplCopyWithImpl<$Res>
    extends _$FirestoreUserFilterRequestCopyWithImpl<$Res,
        _$FirestoreUserFilterRequestImpl>
    implements _$$FirestoreUserFilterRequestImplCopyWith<$Res> {
  __$$FirestoreUserFilterRequestImplCopyWithImpl(
      _$FirestoreUserFilterRequestImpl _value,
      $Res Function(_$FirestoreUserFilterRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nameQuery = freezed,
    Object? minAge = freezed,
    Object? maxAge = freezed,
  }) {
    return _then(_$FirestoreUserFilterRequestImpl(
      nameQuery: freezed == nameQuery
          ? _value.nameQuery
          : nameQuery // ignore: cast_nullable_to_non_nullable
              as String?,
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
@JsonSerializable()
class _$FirestoreUserFilterRequestImpl extends _FirestoreUserFilterRequest {
  _$FirestoreUserFilterRequestImpl({this.nameQuery, this.minAge, this.maxAge})
      : super._();

  factory _$FirestoreUserFilterRequestImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$FirestoreUserFilterRequestImplFromJson(json);

  /// Query for name and surname. Works like .startsWith for user's full name (name OR surname)
  @override
  final String? nameQuery;

  /// Minimal age for users inclusive
  @override
  final int? minAge;

  /// Maximal age of users inclusive
  @override
  final int? maxAge;

  @override
  String toString() {
    return 'FirestoreUserFilterRequest(nameQuery: $nameQuery, minAge: $minAge, maxAge: $maxAge)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirestoreUserFilterRequestImpl &&
            (identical(other.nameQuery, nameQuery) ||
                other.nameQuery == nameQuery) &&
            (identical(other.minAge, minAge) || other.minAge == minAge) &&
            (identical(other.maxAge, maxAge) || other.maxAge == maxAge));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, nameQuery, minAge, maxAge);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FirestoreUserFilterRequestImplCopyWith<_$FirestoreUserFilterRequestImpl>
      get copyWith => __$$FirestoreUserFilterRequestImplCopyWithImpl<
          _$FirestoreUserFilterRequestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FirestoreUserFilterRequestImplToJson(
      this,
    );
  }
}

abstract class _FirestoreUserFilterRequest extends FirestoreUserFilterRequest {
  factory _FirestoreUserFilterRequest(
      {final String? nameQuery,
      final int? minAge,
      final int? maxAge}) = _$FirestoreUserFilterRequestImpl;
  _FirestoreUserFilterRequest._() : super._();

  factory _FirestoreUserFilterRequest.fromJson(Map<String, dynamic> json) =
      _$FirestoreUserFilterRequestImpl.fromJson;

  @override

  /// Query for name and surname. Works like .startsWith for user's full name (name OR surname)
  String? get nameQuery;
  @override

  /// Minimal age for users inclusive
  int? get minAge;
  @override

  /// Maximal age of users inclusive
  int? get maxAge;
  @override
  @JsonKey(ignore: true)
  _$$FirestoreUserFilterRequestImplCopyWith<_$FirestoreUserFilterRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
