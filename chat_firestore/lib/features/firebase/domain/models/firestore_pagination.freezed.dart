// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'firestore_pagination.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FirestorePagination {
  /// Used as 'limit' in firestore
  int get pageSize => throw _privateConstructorUsedError;

  /// Currently returned page size
  int get currentPageSize => throw _privateConstructorUsedError;

  /// Last snaphost of document used as 'startAfterDocument' in firestore query
  DocumentSnapshot<Object?>? get lastDocument =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FirestorePaginationCopyWith<FirestorePagination> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirestorePaginationCopyWith<$Res> {
  factory $FirestorePaginationCopyWith(
          FirestorePagination value, $Res Function(FirestorePagination) then) =
      _$FirestorePaginationCopyWithImpl<$Res, FirestorePagination>;
  @useResult
  $Res call(
      {int pageSize,
      int currentPageSize,
      DocumentSnapshot<Object?>? lastDocument});
}

/// @nodoc
class _$FirestorePaginationCopyWithImpl<$Res, $Val extends FirestorePagination>
    implements $FirestorePaginationCopyWith<$Res> {
  _$FirestorePaginationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageSize = null,
    Object? currentPageSize = null,
    Object? lastDocument = freezed,
  }) {
    return _then(_value.copyWith(
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      currentPageSize: null == currentPageSize
          ? _value.currentPageSize
          : currentPageSize // ignore: cast_nullable_to_non_nullable
              as int,
      lastDocument: freezed == lastDocument
          ? _value.lastDocument
          : lastDocument // ignore: cast_nullable_to_non_nullable
              as DocumentSnapshot<Object?>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FirestorePaginationImplCopyWith<$Res>
    implements $FirestorePaginationCopyWith<$Res> {
  factory _$$FirestorePaginationImplCopyWith(_$FirestorePaginationImpl value,
          $Res Function(_$FirestorePaginationImpl) then) =
      __$$FirestorePaginationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int pageSize,
      int currentPageSize,
      DocumentSnapshot<Object?>? lastDocument});
}

/// @nodoc
class __$$FirestorePaginationImplCopyWithImpl<$Res>
    extends _$FirestorePaginationCopyWithImpl<$Res, _$FirestorePaginationImpl>
    implements _$$FirestorePaginationImplCopyWith<$Res> {
  __$$FirestorePaginationImplCopyWithImpl(_$FirestorePaginationImpl _value,
      $Res Function(_$FirestorePaginationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pageSize = null,
    Object? currentPageSize = null,
    Object? lastDocument = freezed,
  }) {
    return _then(_$FirestorePaginationImpl(
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      currentPageSize: null == currentPageSize
          ? _value.currentPageSize
          : currentPageSize // ignore: cast_nullable_to_non_nullable
              as int,
      lastDocument: freezed == lastDocument
          ? _value.lastDocument
          : lastDocument // ignore: cast_nullable_to_non_nullable
              as DocumentSnapshot<Object?>?,
    ));
  }
}

/// @nodoc

class _$FirestorePaginationImpl implements _FirestorePagination {
  _$FirestorePaginationImpl(
      {this.pageSize = 20, this.currentPageSize = 0, this.lastDocument});

  /// Used as 'limit' in firestore
  @override
  @JsonKey()
  final int pageSize;

  /// Currently returned page size
  @override
  @JsonKey()
  final int currentPageSize;

  /// Last snaphost of document used as 'startAfterDocument' in firestore query
  @override
  final DocumentSnapshot<Object?>? lastDocument;

  @override
  String toString() {
    return 'FirestorePagination(pageSize: $pageSize, currentPageSize: $currentPageSize, lastDocument: $lastDocument)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirestorePaginationImpl &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.currentPageSize, currentPageSize) ||
                other.currentPageSize == currentPageSize) &&
            (identical(other.lastDocument, lastDocument) ||
                other.lastDocument == lastDocument));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, pageSize, currentPageSize, lastDocument);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FirestorePaginationImplCopyWith<_$FirestorePaginationImpl> get copyWith =>
      __$$FirestorePaginationImplCopyWithImpl<_$FirestorePaginationImpl>(
          this, _$identity);
}

abstract class _FirestorePagination implements FirestorePagination {
  factory _FirestorePagination(
          {final int pageSize,
          final int currentPageSize,
          final DocumentSnapshot<Object?>? lastDocument}) =
      _$FirestorePaginationImpl;

  @override

  /// Used as 'limit' in firestore
  int get pageSize;
  @override

  /// Currently returned page size
  int get currentPageSize;
  @override

  /// Last snaphost of document used as 'startAfterDocument' in firestore query
  DocumentSnapshot<Object?>? get lastDocument;
  @override
  @JsonKey(ignore: true)
  _$$FirestorePaginationImplCopyWith<_$FirestorePaginationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
