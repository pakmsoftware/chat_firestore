// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'firebase_verify_email_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FirebaseVerifyEmailState {
  /// Is in process of sending email verification Link
  bool get isSendingEmail => throw _privateConstructorUsedError;

  /// Logged user from firebase auth
  User? get loggedUser => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FirebaseVerifyEmailStateCopyWith<FirebaseVerifyEmailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirebaseVerifyEmailStateCopyWith<$Res> {
  factory $FirebaseVerifyEmailStateCopyWith(FirebaseVerifyEmailState value,
          $Res Function(FirebaseVerifyEmailState) then) =
      _$FirebaseVerifyEmailStateCopyWithImpl<$Res, FirebaseVerifyEmailState>;
  @useResult
  $Res call({bool isSendingEmail, User? loggedUser});
}

/// @nodoc
class _$FirebaseVerifyEmailStateCopyWithImpl<$Res,
        $Val extends FirebaseVerifyEmailState>
    implements $FirebaseVerifyEmailStateCopyWith<$Res> {
  _$FirebaseVerifyEmailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSendingEmail = null,
    Object? loggedUser = freezed,
  }) {
    return _then(_value.copyWith(
      isSendingEmail: null == isSendingEmail
          ? _value.isSendingEmail
          : isSendingEmail // ignore: cast_nullable_to_non_nullable
              as bool,
      loggedUser: freezed == loggedUser
          ? _value.loggedUser
          : loggedUser // ignore: cast_nullable_to_non_nullable
              as User?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FirebaseVerifyEmailStateImplCopyWith<$Res>
    implements $FirebaseVerifyEmailStateCopyWith<$Res> {
  factory _$$FirebaseVerifyEmailStateImplCopyWith(
          _$FirebaseVerifyEmailStateImpl value,
          $Res Function(_$FirebaseVerifyEmailStateImpl) then) =
      __$$FirebaseVerifyEmailStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isSendingEmail, User? loggedUser});
}

/// @nodoc
class __$$FirebaseVerifyEmailStateImplCopyWithImpl<$Res>
    extends _$FirebaseVerifyEmailStateCopyWithImpl<$Res,
        _$FirebaseVerifyEmailStateImpl>
    implements _$$FirebaseVerifyEmailStateImplCopyWith<$Res> {
  __$$FirebaseVerifyEmailStateImplCopyWithImpl(
      _$FirebaseVerifyEmailStateImpl _value,
      $Res Function(_$FirebaseVerifyEmailStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSendingEmail = null,
    Object? loggedUser = freezed,
  }) {
    return _then(_$FirebaseVerifyEmailStateImpl(
      isSendingEmail: null == isSendingEmail
          ? _value.isSendingEmail
          : isSendingEmail // ignore: cast_nullable_to_non_nullable
              as bool,
      loggedUser: freezed == loggedUser
          ? _value.loggedUser
          : loggedUser // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc

class _$FirebaseVerifyEmailStateImpl implements _FirebaseVerifyEmailState {
  _$FirebaseVerifyEmailStateImpl(
      {required this.isSendingEmail, this.loggedUser});

  /// Is in process of sending email verification Link
  @override
  final bool isSendingEmail;

  /// Logged user from firebase auth
  @override
  final User? loggedUser;

  @override
  String toString() {
    return 'FirebaseVerifyEmailState(isSendingEmail: $isSendingEmail, loggedUser: $loggedUser)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirebaseVerifyEmailStateImpl &&
            (identical(other.isSendingEmail, isSendingEmail) ||
                other.isSendingEmail == isSendingEmail) &&
            (identical(other.loggedUser, loggedUser) ||
                other.loggedUser == loggedUser));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isSendingEmail, loggedUser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FirebaseVerifyEmailStateImplCopyWith<_$FirebaseVerifyEmailStateImpl>
      get copyWith => __$$FirebaseVerifyEmailStateImplCopyWithImpl<
          _$FirebaseVerifyEmailStateImpl>(this, _$identity);
}

abstract class _FirebaseVerifyEmailState implements FirebaseVerifyEmailState {
  factory _FirebaseVerifyEmailState(
      {required final bool isSendingEmail,
      final User? loggedUser}) = _$FirebaseVerifyEmailStateImpl;

  @override

  /// Is in process of sending email verification Link
  bool get isSendingEmail;
  @override

  /// Logged user from firebase auth
  User? get loggedUser;
  @override
  @JsonKey(ignore: true)
  _$$FirebaseVerifyEmailStateImplCopyWith<_$FirebaseVerifyEmailStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
