// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'firebase_routing_manager_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FirebaseRoutingManagerState {
  bool get reloadPage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FirebaseRoutingManagerStateCopyWith<FirebaseRoutingManagerState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirebaseRoutingManagerStateCopyWith<$Res> {
  factory $FirebaseRoutingManagerStateCopyWith(
          FirebaseRoutingManagerState value,
          $Res Function(FirebaseRoutingManagerState) then) =
      _$FirebaseRoutingManagerStateCopyWithImpl<$Res,
          FirebaseRoutingManagerState>;
  @useResult
  $Res call({bool reloadPage});
}

/// @nodoc
class _$FirebaseRoutingManagerStateCopyWithImpl<$Res,
        $Val extends FirebaseRoutingManagerState>
    implements $FirebaseRoutingManagerStateCopyWith<$Res> {
  _$FirebaseRoutingManagerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reloadPage = null,
  }) {
    return _then(_value.copyWith(
      reloadPage: null == reloadPage
          ? _value.reloadPage
          : reloadPage // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FirebaseRoutingManagerStateImplCopyWith<$Res>
    implements $FirebaseRoutingManagerStateCopyWith<$Res> {
  factory _$$FirebaseRoutingManagerStateImplCopyWith(
          _$FirebaseRoutingManagerStateImpl value,
          $Res Function(_$FirebaseRoutingManagerStateImpl) then) =
      __$$FirebaseRoutingManagerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool reloadPage});
}

/// @nodoc
class __$$FirebaseRoutingManagerStateImplCopyWithImpl<$Res>
    extends _$FirebaseRoutingManagerStateCopyWithImpl<$Res,
        _$FirebaseRoutingManagerStateImpl>
    implements _$$FirebaseRoutingManagerStateImplCopyWith<$Res> {
  __$$FirebaseRoutingManagerStateImplCopyWithImpl(
      _$FirebaseRoutingManagerStateImpl _value,
      $Res Function(_$FirebaseRoutingManagerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reloadPage = null,
  }) {
    return _then(_$FirebaseRoutingManagerStateImpl(
      reloadPage: null == reloadPage
          ? _value.reloadPage
          : reloadPage // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$FirebaseRoutingManagerStateImpl
    implements _FirebaseRoutingManagerState {
  _$FirebaseRoutingManagerStateImpl({required this.reloadPage});

  @override
  final bool reloadPage;

  @override
  String toString() {
    return 'FirebaseRoutingManagerState(reloadPage: $reloadPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirebaseRoutingManagerStateImpl &&
            (identical(other.reloadPage, reloadPage) ||
                other.reloadPage == reloadPage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, reloadPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FirebaseRoutingManagerStateImplCopyWith<_$FirebaseRoutingManagerStateImpl>
      get copyWith => __$$FirebaseRoutingManagerStateImplCopyWithImpl<
          _$FirebaseRoutingManagerStateImpl>(this, _$identity);
}

abstract class _FirebaseRoutingManagerState
    implements FirebaseRoutingManagerState {
  factory _FirebaseRoutingManagerState({required final bool reloadPage}) =
      _$FirebaseRoutingManagerStateImpl;

  @override
  bool get reloadPage;
  @override
  @JsonKey(ignore: true)
  _$$FirebaseRoutingManagerStateImplCopyWith<_$FirebaseRoutingManagerStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
