// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'firestore_list_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FirestoreListRequest {
  /// Order by sort name of parameter
  String get orderBy => throw _privateConstructorUsedError;

  /// Pagination information
  FirestorePagination get pagination => throw _privateConstructorUsedError;

  /// By default order by is ascending. Set it to true to have descending sort
  bool get orderByDescending => throw _privateConstructorUsedError;

  /// Name of collection. Is overwritten in datasource layer
  String get collection => throw _privateConstructorUsedError;

  /// Collection reference
  CollectionReference<Map<String, dynamic>>? get collectionRef =>
      throw _privateConstructorUsedError;

  /// Second ordering parameter
  String? get orderBySecond => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FirestoreListRequestCopyWith<FirestoreListRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirestoreListRequestCopyWith<$Res> {
  factory $FirestoreListRequestCopyWith(FirestoreListRequest value,
          $Res Function(FirestoreListRequest) then) =
      _$FirestoreListRequestCopyWithImpl<$Res, FirestoreListRequest>;
  @useResult
  $Res call(
      {String orderBy,
      FirestorePagination pagination,
      bool orderByDescending,
      String collection,
      CollectionReference<Map<String, dynamic>>? collectionRef,
      String? orderBySecond});

  $FirestorePaginationCopyWith<$Res> get pagination;
}

/// @nodoc
class _$FirestoreListRequestCopyWithImpl<$Res,
        $Val extends FirestoreListRequest>
    implements $FirestoreListRequestCopyWith<$Res> {
  _$FirestoreListRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderBy = null,
    Object? pagination = null,
    Object? orderByDescending = null,
    Object? collection = null,
    Object? collectionRef = freezed,
    Object? orderBySecond = freezed,
  }) {
    return _then(_value.copyWith(
      orderBy: null == orderBy
          ? _value.orderBy
          : orderBy // ignore: cast_nullable_to_non_nullable
              as String,
      pagination: null == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as FirestorePagination,
      orderByDescending: null == orderByDescending
          ? _value.orderByDescending
          : orderByDescending // ignore: cast_nullable_to_non_nullable
              as bool,
      collection: null == collection
          ? _value.collection
          : collection // ignore: cast_nullable_to_non_nullable
              as String,
      collectionRef: freezed == collectionRef
          ? _value.collectionRef
          : collectionRef // ignore: cast_nullable_to_non_nullable
              as CollectionReference<Map<String, dynamic>>?,
      orderBySecond: freezed == orderBySecond
          ? _value.orderBySecond
          : orderBySecond // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FirestorePaginationCopyWith<$Res> get pagination {
    return $FirestorePaginationCopyWith<$Res>(_value.pagination, (value) {
      return _then(_value.copyWith(pagination: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FirestoreListRequestImplCopyWith<$Res>
    implements $FirestoreListRequestCopyWith<$Res> {
  factory _$$FirestoreListRequestImplCopyWith(_$FirestoreListRequestImpl value,
          $Res Function(_$FirestoreListRequestImpl) then) =
      __$$FirestoreListRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String orderBy,
      FirestorePagination pagination,
      bool orderByDescending,
      String collection,
      CollectionReference<Map<String, dynamic>>? collectionRef,
      String? orderBySecond});

  @override
  $FirestorePaginationCopyWith<$Res> get pagination;
}

/// @nodoc
class __$$FirestoreListRequestImplCopyWithImpl<$Res>
    extends _$FirestoreListRequestCopyWithImpl<$Res, _$FirestoreListRequestImpl>
    implements _$$FirestoreListRequestImplCopyWith<$Res> {
  __$$FirestoreListRequestImplCopyWithImpl(_$FirestoreListRequestImpl _value,
      $Res Function(_$FirestoreListRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? orderBy = null,
    Object? pagination = null,
    Object? orderByDescending = null,
    Object? collection = null,
    Object? collectionRef = freezed,
    Object? orderBySecond = freezed,
  }) {
    return _then(_$FirestoreListRequestImpl(
      orderBy: null == orderBy
          ? _value.orderBy
          : orderBy // ignore: cast_nullable_to_non_nullable
              as String,
      pagination: null == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as FirestorePagination,
      orderByDescending: null == orderByDescending
          ? _value.orderByDescending
          : orderByDescending // ignore: cast_nullable_to_non_nullable
              as bool,
      collection: null == collection
          ? _value.collection
          : collection // ignore: cast_nullable_to_non_nullable
              as String,
      collectionRef: freezed == collectionRef
          ? _value.collectionRef
          : collectionRef // ignore: cast_nullable_to_non_nullable
              as CollectionReference<Map<String, dynamic>>?,
      orderBySecond: freezed == orderBySecond
          ? _value.orderBySecond
          : orderBySecond // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FirestoreListRequestImpl extends _FirestoreListRequest {
  _$FirestoreListRequestImpl(
      {required this.orderBy,
      required this.pagination,
      this.orderByDescending = false,
      this.collection = '',
      this.collectionRef,
      this.orderBySecond})
      : super._();

  /// Order by sort name of parameter
  @override
  final String orderBy;

  /// Pagination information
  @override
  final FirestorePagination pagination;

  /// By default order by is ascending. Set it to true to have descending sort
  @override
  @JsonKey()
  final bool orderByDescending;

  /// Name of collection. Is overwritten in datasource layer
  @override
  @JsonKey()
  final String collection;

  /// Collection reference
  @override
  final CollectionReference<Map<String, dynamic>>? collectionRef;

  /// Second ordering parameter
  @override
  final String? orderBySecond;

  @override
  String toString() {
    return 'FirestoreListRequest(orderBy: $orderBy, pagination: $pagination, orderByDescending: $orderByDescending, collection: $collection, collectionRef: $collectionRef, orderBySecond: $orderBySecond)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirestoreListRequestImpl &&
            (identical(other.orderBy, orderBy) || other.orderBy == orderBy) &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination) &&
            (identical(other.orderByDescending, orderByDescending) ||
                other.orderByDescending == orderByDescending) &&
            (identical(other.collection, collection) ||
                other.collection == collection) &&
            (identical(other.collectionRef, collectionRef) ||
                other.collectionRef == collectionRef) &&
            (identical(other.orderBySecond, orderBySecond) ||
                other.orderBySecond == orderBySecond));
  }

  @override
  int get hashCode => Object.hash(runtimeType, orderBy, pagination,
      orderByDescending, collection, collectionRef, orderBySecond);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FirestoreListRequestImplCopyWith<_$FirestoreListRequestImpl>
      get copyWith =>
          __$$FirestoreListRequestImplCopyWithImpl<_$FirestoreListRequestImpl>(
              this, _$identity);
}

abstract class _FirestoreListRequest extends FirestoreListRequest {
  factory _FirestoreListRequest(
      {required final String orderBy,
      required final FirestorePagination pagination,
      final bool orderByDescending,
      final String collection,
      final CollectionReference<Map<String, dynamic>>? collectionRef,
      final String? orderBySecond}) = _$FirestoreListRequestImpl;
  _FirestoreListRequest._() : super._();

  @override

  /// Order by sort name of parameter
  String get orderBy;
  @override

  /// Pagination information
  FirestorePagination get pagination;
  @override

  /// By default order by is ascending. Set it to true to have descending sort
  bool get orderByDescending;
  @override

  /// Name of collection. Is overwritten in datasource layer
  String get collection;
  @override

  /// Collection reference
  CollectionReference<Map<String, dynamic>>? get collectionRef;
  @override

  /// Second ordering parameter
  String? get orderBySecond;
  @override
  @JsonKey(ignore: true)
  _$$FirestoreListRequestImplCopyWith<_$FirestoreListRequestImpl>
      get copyWith => throw _privateConstructorUsedError;
}
