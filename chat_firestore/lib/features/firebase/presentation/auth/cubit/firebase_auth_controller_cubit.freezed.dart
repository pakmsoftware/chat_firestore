// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'firebase_auth_controller_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FirebaseAuthControllerState {
  /// Is loading auth data -> page initialization
  bool get isLoadingAuthData => throw _privateConstructorUsedError;

  /// Logged user from Firebase
  User? get loggedUser => throw _privateConstructorUsedError;

  /// Logged user custom claims
  Map<String, dynamic>? get loggedUserCustomClaims =>
      throw _privateConstructorUsedError;

  /// Create a copy of FirebaseAuthControllerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FirebaseAuthControllerStateCopyWith<FirebaseAuthControllerState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirebaseAuthControllerStateCopyWith<$Res> {
  factory $FirebaseAuthControllerStateCopyWith(
          FirebaseAuthControllerState value,
          $Res Function(FirebaseAuthControllerState) then) =
      _$FirebaseAuthControllerStateCopyWithImpl<$Res,
          FirebaseAuthControllerState>;
  @useResult
  $Res call(
      {bool isLoadingAuthData,
      User? loggedUser,
      Map<String, dynamic>? loggedUserCustomClaims});
}

/// @nodoc
class _$FirebaseAuthControllerStateCopyWithImpl<$Res,
        $Val extends FirebaseAuthControllerState>
    implements $FirebaseAuthControllerStateCopyWith<$Res> {
  _$FirebaseAuthControllerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FirebaseAuthControllerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoadingAuthData = null,
    Object? loggedUser = freezed,
    Object? loggedUserCustomClaims = freezed,
  }) {
    return _then(_value.copyWith(
      isLoadingAuthData: null == isLoadingAuthData
          ? _value.isLoadingAuthData
          : isLoadingAuthData // ignore: cast_nullable_to_non_nullable
              as bool,
      loggedUser: freezed == loggedUser
          ? _value.loggedUser
          : loggedUser // ignore: cast_nullable_to_non_nullable
              as User?,
      loggedUserCustomClaims: freezed == loggedUserCustomClaims
          ? _value.loggedUserCustomClaims
          : loggedUserCustomClaims // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FirebaseAuthControllerStateImplCopyWith<$Res>
    implements $FirebaseAuthControllerStateCopyWith<$Res> {
  factory _$$FirebaseAuthControllerStateImplCopyWith(
          _$FirebaseAuthControllerStateImpl value,
          $Res Function(_$FirebaseAuthControllerStateImpl) then) =
      __$$FirebaseAuthControllerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoadingAuthData,
      User? loggedUser,
      Map<String, dynamic>? loggedUserCustomClaims});
}

/// @nodoc
class __$$FirebaseAuthControllerStateImplCopyWithImpl<$Res>
    extends _$FirebaseAuthControllerStateCopyWithImpl<$Res,
        _$FirebaseAuthControllerStateImpl>
    implements _$$FirebaseAuthControllerStateImplCopyWith<$Res> {
  __$$FirebaseAuthControllerStateImplCopyWithImpl(
      _$FirebaseAuthControllerStateImpl _value,
      $Res Function(_$FirebaseAuthControllerStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of FirebaseAuthControllerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoadingAuthData = null,
    Object? loggedUser = freezed,
    Object? loggedUserCustomClaims = freezed,
  }) {
    return _then(_$FirebaseAuthControllerStateImpl(
      isLoadingAuthData: null == isLoadingAuthData
          ? _value.isLoadingAuthData
          : isLoadingAuthData // ignore: cast_nullable_to_non_nullable
              as bool,
      loggedUser: freezed == loggedUser
          ? _value.loggedUser
          : loggedUser // ignore: cast_nullable_to_non_nullable
              as User?,
      loggedUserCustomClaims: freezed == loggedUserCustomClaims
          ? _value._loggedUserCustomClaims
          : loggedUserCustomClaims // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc

class _$FirebaseAuthControllerStateImpl
    implements _FirebaseAuthControllerState {
  _$FirebaseAuthControllerStateImpl(
      {required this.isLoadingAuthData,
      this.loggedUser,
      final Map<String, dynamic>? loggedUserCustomClaims})
      : _loggedUserCustomClaims = loggedUserCustomClaims;

  /// Is loading auth data -> page initialization
  @override
  final bool isLoadingAuthData;

  /// Logged user from Firebase
  @override
  final User? loggedUser;

  /// Logged user custom claims
  final Map<String, dynamic>? _loggedUserCustomClaims;

  /// Logged user custom claims
  @override
  Map<String, dynamic>? get loggedUserCustomClaims {
    final value = _loggedUserCustomClaims;
    if (value == null) return null;
    if (_loggedUserCustomClaims is EqualUnmodifiableMapView)
      return _loggedUserCustomClaims;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'FirebaseAuthControllerState(isLoadingAuthData: $isLoadingAuthData, loggedUser: $loggedUser, loggedUserCustomClaims: $loggedUserCustomClaims)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirebaseAuthControllerStateImpl &&
            (identical(other.isLoadingAuthData, isLoadingAuthData) ||
                other.isLoadingAuthData == isLoadingAuthData) &&
            (identical(other.loggedUser, loggedUser) ||
                other.loggedUser == loggedUser) &&
            const DeepCollectionEquality().equals(
                other._loggedUserCustomClaims, _loggedUserCustomClaims));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoadingAuthData, loggedUser,
      const DeepCollectionEquality().hash(_loggedUserCustomClaims));

  /// Create a copy of FirebaseAuthControllerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FirebaseAuthControllerStateImplCopyWith<_$FirebaseAuthControllerStateImpl>
      get copyWith => __$$FirebaseAuthControllerStateImplCopyWithImpl<
          _$FirebaseAuthControllerStateImpl>(this, _$identity);
}

abstract class _FirebaseAuthControllerState
    implements FirebaseAuthControllerState {
  factory _FirebaseAuthControllerState(
          {required final bool isLoadingAuthData,
          final User? loggedUser,
          final Map<String, dynamic>? loggedUserCustomClaims}) =
      _$FirebaseAuthControllerStateImpl;

  /// Is loading auth data -> page initialization
  @override
  bool get isLoadingAuthData;

  /// Logged user from Firebase
  @override
  User? get loggedUser;

  /// Logged user custom claims
  @override
  Map<String, dynamic>? get loggedUserCustomClaims;

  /// Create a copy of FirebaseAuthControllerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FirebaseAuthControllerStateImplCopyWith<_$FirebaseAuthControllerStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
