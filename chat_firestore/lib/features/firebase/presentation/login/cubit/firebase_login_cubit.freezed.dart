// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'firebase_login_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FirebaseLoginState {
  /// Is logging in or is registering
  bool get isSubmitting => throw _privateConstructorUsedError;

  /// Login/Register success
  bool get submitSucccess => throw _privateConstructorUsedError;

  /// Form email
  String get email => throw _privateConstructorUsedError;

  /// Form password
  String get password => throw _privateConstructorUsedError;

  /// Create a copy of FirebaseLoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FirebaseLoginStateCopyWith<FirebaseLoginState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirebaseLoginStateCopyWith<$Res> {
  factory $FirebaseLoginStateCopyWith(
          FirebaseLoginState value, $Res Function(FirebaseLoginState) then) =
      _$FirebaseLoginStateCopyWithImpl<$Res, FirebaseLoginState>;
  @useResult
  $Res call(
      {bool isSubmitting, bool submitSucccess, String email, String password});
}

/// @nodoc
class _$FirebaseLoginStateCopyWithImpl<$Res, $Val extends FirebaseLoginState>
    implements $FirebaseLoginStateCopyWith<$Res> {
  _$FirebaseLoginStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FirebaseLoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSubmitting = null,
    Object? submitSucccess = null,
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      submitSucccess: null == submitSucccess
          ? _value.submitSucccess
          : submitSucccess // ignore: cast_nullable_to_non_nullable
              as bool,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FirebaseLoginStateImplCopyWith<$Res>
    implements $FirebaseLoginStateCopyWith<$Res> {
  factory _$$FirebaseLoginStateImplCopyWith(_$FirebaseLoginStateImpl value,
          $Res Function(_$FirebaseLoginStateImpl) then) =
      __$$FirebaseLoginStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isSubmitting, bool submitSucccess, String email, String password});
}

/// @nodoc
class __$$FirebaseLoginStateImplCopyWithImpl<$Res>
    extends _$FirebaseLoginStateCopyWithImpl<$Res, _$FirebaseLoginStateImpl>
    implements _$$FirebaseLoginStateImplCopyWith<$Res> {
  __$$FirebaseLoginStateImplCopyWithImpl(_$FirebaseLoginStateImpl _value,
      $Res Function(_$FirebaseLoginStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of FirebaseLoginState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSubmitting = null,
    Object? submitSucccess = null,
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$FirebaseLoginStateImpl(
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      submitSucccess: null == submitSucccess
          ? _value.submitSucccess
          : submitSucccess // ignore: cast_nullable_to_non_nullable
              as bool,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FirebaseLoginStateImpl implements _FirebaseLoginState {
  _$FirebaseLoginStateImpl(
      {required this.isSubmitting,
      required this.submitSucccess,
      required this.email,
      required this.password});

  /// Is logging in or is registering
  @override
  final bool isSubmitting;

  /// Login/Register success
  @override
  final bool submitSucccess;

  /// Form email
  @override
  final String email;

  /// Form password
  @override
  final String password;

  @override
  String toString() {
    return 'FirebaseLoginState(isSubmitting: $isSubmitting, submitSucccess: $submitSucccess, email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirebaseLoginStateImpl &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.submitSucccess, submitSucccess) ||
                other.submitSucccess == submitSucccess) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isSubmitting, submitSucccess, email, password);

  /// Create a copy of FirebaseLoginState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FirebaseLoginStateImplCopyWith<_$FirebaseLoginStateImpl> get copyWith =>
      __$$FirebaseLoginStateImplCopyWithImpl<_$FirebaseLoginStateImpl>(
          this, _$identity);
}

abstract class _FirebaseLoginState implements FirebaseLoginState {
  factory _FirebaseLoginState(
      {required final bool isSubmitting,
      required final bool submitSucccess,
      required final String email,
      required final String password}) = _$FirebaseLoginStateImpl;

  /// Is logging in or is registering
  @override
  bool get isSubmitting;

  /// Login/Register success
  @override
  bool get submitSucccess;

  /// Form email
  @override
  String get email;

  /// Form password
  @override
  String get password;

  /// Create a copy of FirebaseLoginState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FirebaseLoginStateImplCopyWith<_$FirebaseLoginStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
