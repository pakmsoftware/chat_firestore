// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'firebase_main_page_manager_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FirebaseMainPageManagerState {
  /// Current active index for bottom menu
  int get currentIndex => throw _privateConstructorUsedError;

  /// Title of app bar
  String get appBarTitle => throw _privateConstructorUsedError;

  /// Extra actions for app bar
  List<Widget> get extraActions => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FirebaseMainPageManagerStateCopyWith<FirebaseMainPageManagerState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirebaseMainPageManagerStateCopyWith<$Res> {
  factory $FirebaseMainPageManagerStateCopyWith(
          FirebaseMainPageManagerState value,
          $Res Function(FirebaseMainPageManagerState) then) =
      _$FirebaseMainPageManagerStateCopyWithImpl<$Res,
          FirebaseMainPageManagerState>;
  @useResult
  $Res call({int currentIndex, String appBarTitle, List<Widget> extraActions});
}

/// @nodoc
class _$FirebaseMainPageManagerStateCopyWithImpl<$Res,
        $Val extends FirebaseMainPageManagerState>
    implements $FirebaseMainPageManagerStateCopyWith<$Res> {
  _$FirebaseMainPageManagerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentIndex = null,
    Object? appBarTitle = null,
    Object? extraActions = null,
  }) {
    return _then(_value.copyWith(
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      appBarTitle: null == appBarTitle
          ? _value.appBarTitle
          : appBarTitle // ignore: cast_nullable_to_non_nullable
              as String,
      extraActions: null == extraActions
          ? _value.extraActions
          : extraActions // ignore: cast_nullable_to_non_nullable
              as List<Widget>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FirebaseMainPageManagerStateImplCopyWith<$Res>
    implements $FirebaseMainPageManagerStateCopyWith<$Res> {
  factory _$$FirebaseMainPageManagerStateImplCopyWith(
          _$FirebaseMainPageManagerStateImpl value,
          $Res Function(_$FirebaseMainPageManagerStateImpl) then) =
      __$$FirebaseMainPageManagerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int currentIndex, String appBarTitle, List<Widget> extraActions});
}

/// @nodoc
class __$$FirebaseMainPageManagerStateImplCopyWithImpl<$Res>
    extends _$FirebaseMainPageManagerStateCopyWithImpl<$Res,
        _$FirebaseMainPageManagerStateImpl>
    implements _$$FirebaseMainPageManagerStateImplCopyWith<$Res> {
  __$$FirebaseMainPageManagerStateImplCopyWithImpl(
      _$FirebaseMainPageManagerStateImpl _value,
      $Res Function(_$FirebaseMainPageManagerStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentIndex = null,
    Object? appBarTitle = null,
    Object? extraActions = null,
  }) {
    return _then(_$FirebaseMainPageManagerStateImpl(
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      appBarTitle: null == appBarTitle
          ? _value.appBarTitle
          : appBarTitle // ignore: cast_nullable_to_non_nullable
              as String,
      extraActions: null == extraActions
          ? _value._extraActions
          : extraActions // ignore: cast_nullable_to_non_nullable
              as List<Widget>,
    ));
  }
}

/// @nodoc

class _$FirebaseMainPageManagerStateImpl
    implements _FirebaseMainPageManagerState {
  _$FirebaseMainPageManagerStateImpl(
      {required this.currentIndex,
      required this.appBarTitle,
      final List<Widget> extraActions = const []})
      : _extraActions = extraActions;

  /// Current active index for bottom menu
  @override
  final int currentIndex;

  /// Title of app bar
  @override
  final String appBarTitle;

  /// Extra actions for app bar
  final List<Widget> _extraActions;

  /// Extra actions for app bar
  @override
  @JsonKey()
  List<Widget> get extraActions {
    if (_extraActions is EqualUnmodifiableListView) return _extraActions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_extraActions);
  }

  @override
  String toString() {
    return 'FirebaseMainPageManagerState(currentIndex: $currentIndex, appBarTitle: $appBarTitle, extraActions: $extraActions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirebaseMainPageManagerStateImpl &&
            (identical(other.currentIndex, currentIndex) ||
                other.currentIndex == currentIndex) &&
            (identical(other.appBarTitle, appBarTitle) ||
                other.appBarTitle == appBarTitle) &&
            const DeepCollectionEquality()
                .equals(other._extraActions, _extraActions));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentIndex, appBarTitle,
      const DeepCollectionEquality().hash(_extraActions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FirebaseMainPageManagerStateImplCopyWith<
          _$FirebaseMainPageManagerStateImpl>
      get copyWith => __$$FirebaseMainPageManagerStateImplCopyWithImpl<
          _$FirebaseMainPageManagerStateImpl>(this, _$identity);
}

abstract class _FirebaseMainPageManagerState
    implements FirebaseMainPageManagerState {
  factory _FirebaseMainPageManagerState(
      {required final int currentIndex,
      required final String appBarTitle,
      final List<Widget> extraActions}) = _$FirebaseMainPageManagerStateImpl;

  @override

  /// Current active index for bottom menu
  int get currentIndex;
  @override

  /// Title of app bar
  String get appBarTitle;
  @override

  /// Extra actions for app bar
  List<Widget> get extraActions;
  @override
  @JsonKey(ignore: true)
  _$$FirebaseMainPageManagerStateImplCopyWith<
          _$FirebaseMainPageManagerStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
