// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'firestore_chat_page_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FirestoreChatPageState {
  /// Is loading first page of chat objects
  bool get isLoadingData => throw _privateConstructorUsedError;

  /// Determines if Cubit is fetching more data from firestore
  bool get isFetchingMore => throw _privateConstructorUsedError;

  /// Chat list from firestore
  FirestorePagedList<FirestoreChat> get chats =>
      throw _privateConstructorUsedError;

  /// Helper list of users used to get theirs ids for chat filtering
  FirestorePagedList<FirestoreUser> get filteredUsersHelperList =>
      throw _privateConstructorUsedError;

  /// Filters used for chat collection (firstly for users)
  FirestoreChatFilter get filters => throw _privateConstructorUsedError;

  /// Create a copy of FirestoreChatPageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FirestoreChatPageStateCopyWith<FirestoreChatPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirestoreChatPageStateCopyWith<$Res> {
  factory $FirestoreChatPageStateCopyWith(FirestoreChatPageState value,
          $Res Function(FirestoreChatPageState) then) =
      _$FirestoreChatPageStateCopyWithImpl<$Res, FirestoreChatPageState>;
  @useResult
  $Res call(
      {bool isLoadingData,
      bool isFetchingMore,
      FirestorePagedList<FirestoreChat> chats,
      FirestorePagedList<FirestoreUser> filteredUsersHelperList,
      FirestoreChatFilter filters});

  $FirestoreChatFilterCopyWith<$Res> get filters;
}

/// @nodoc
class _$FirestoreChatPageStateCopyWithImpl<$Res,
        $Val extends FirestoreChatPageState>
    implements $FirestoreChatPageStateCopyWith<$Res> {
  _$FirestoreChatPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FirestoreChatPageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoadingData = null,
    Object? isFetchingMore = null,
    Object? chats = null,
    Object? filteredUsersHelperList = null,
    Object? filters = null,
  }) {
    return _then(_value.copyWith(
      isLoadingData: null == isLoadingData
          ? _value.isLoadingData
          : isLoadingData // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetchingMore: null == isFetchingMore
          ? _value.isFetchingMore
          : isFetchingMore // ignore: cast_nullable_to_non_nullable
              as bool,
      chats: null == chats
          ? _value.chats
          : chats // ignore: cast_nullable_to_non_nullable
              as FirestorePagedList<FirestoreChat>,
      filteredUsersHelperList: null == filteredUsersHelperList
          ? _value.filteredUsersHelperList
          : filteredUsersHelperList // ignore: cast_nullable_to_non_nullable
              as FirestorePagedList<FirestoreUser>,
      filters: null == filters
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as FirestoreChatFilter,
    ) as $Val);
  }

  /// Create a copy of FirestoreChatPageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FirestoreChatFilterCopyWith<$Res> get filters {
    return $FirestoreChatFilterCopyWith<$Res>(_value.filters, (value) {
      return _then(_value.copyWith(filters: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FirestoreChatPageStateImplCopyWith<$Res>
    implements $FirestoreChatPageStateCopyWith<$Res> {
  factory _$$FirestoreChatPageStateImplCopyWith(
          _$FirestoreChatPageStateImpl value,
          $Res Function(_$FirestoreChatPageStateImpl) then) =
      __$$FirestoreChatPageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoadingData,
      bool isFetchingMore,
      FirestorePagedList<FirestoreChat> chats,
      FirestorePagedList<FirestoreUser> filteredUsersHelperList,
      FirestoreChatFilter filters});

  @override
  $FirestoreChatFilterCopyWith<$Res> get filters;
}

/// @nodoc
class __$$FirestoreChatPageStateImplCopyWithImpl<$Res>
    extends _$FirestoreChatPageStateCopyWithImpl<$Res,
        _$FirestoreChatPageStateImpl>
    implements _$$FirestoreChatPageStateImplCopyWith<$Res> {
  __$$FirestoreChatPageStateImplCopyWithImpl(
      _$FirestoreChatPageStateImpl _value,
      $Res Function(_$FirestoreChatPageStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of FirestoreChatPageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoadingData = null,
    Object? isFetchingMore = null,
    Object? chats = null,
    Object? filteredUsersHelperList = null,
    Object? filters = null,
  }) {
    return _then(_$FirestoreChatPageStateImpl(
      isLoadingData: null == isLoadingData
          ? _value.isLoadingData
          : isLoadingData // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetchingMore: null == isFetchingMore
          ? _value.isFetchingMore
          : isFetchingMore // ignore: cast_nullable_to_non_nullable
              as bool,
      chats: null == chats
          ? _value.chats
          : chats // ignore: cast_nullable_to_non_nullable
              as FirestorePagedList<FirestoreChat>,
      filteredUsersHelperList: null == filteredUsersHelperList
          ? _value.filteredUsersHelperList
          : filteredUsersHelperList // ignore: cast_nullable_to_non_nullable
              as FirestorePagedList<FirestoreUser>,
      filters: null == filters
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as FirestoreChatFilter,
    ));
  }
}

/// @nodoc

class _$FirestoreChatPageStateImpl implements _FirestoreChatPageState {
  _$FirestoreChatPageStateImpl(
      {required this.isLoadingData,
      required this.isFetchingMore,
      required this.chats,
      required this.filteredUsersHelperList,
      required this.filters});

  /// Is loading first page of chat objects
  @override
  final bool isLoadingData;

  /// Determines if Cubit is fetching more data from firestore
  @override
  final bool isFetchingMore;

  /// Chat list from firestore
  @override
  final FirestorePagedList<FirestoreChat> chats;

  /// Helper list of users used to get theirs ids for chat filtering
  @override
  final FirestorePagedList<FirestoreUser> filteredUsersHelperList;

  /// Filters used for chat collection (firstly for users)
  @override
  final FirestoreChatFilter filters;

  @override
  String toString() {
    return 'FirestoreChatPageState(isLoadingData: $isLoadingData, isFetchingMore: $isFetchingMore, chats: $chats, filteredUsersHelperList: $filteredUsersHelperList, filters: $filters)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirestoreChatPageStateImpl &&
            (identical(other.isLoadingData, isLoadingData) ||
                other.isLoadingData == isLoadingData) &&
            (identical(other.isFetchingMore, isFetchingMore) ||
                other.isFetchingMore == isFetchingMore) &&
            (identical(other.chats, chats) || other.chats == chats) &&
            (identical(
                    other.filteredUsersHelperList, filteredUsersHelperList) ||
                other.filteredUsersHelperList == filteredUsersHelperList) &&
            (identical(other.filters, filters) || other.filters == filters));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isLoadingData, isFetchingMore,
      chats, filteredUsersHelperList, filters);

  /// Create a copy of FirestoreChatPageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FirestoreChatPageStateImplCopyWith<_$FirestoreChatPageStateImpl>
      get copyWith => __$$FirestoreChatPageStateImplCopyWithImpl<
          _$FirestoreChatPageStateImpl>(this, _$identity);
}

abstract class _FirestoreChatPageState implements FirestoreChatPageState {
  factory _FirestoreChatPageState(
      {required final bool isLoadingData,
      required final bool isFetchingMore,
      required final FirestorePagedList<FirestoreChat> chats,
      required final FirestorePagedList<FirestoreUser> filteredUsersHelperList,
      required final FirestoreChatFilter
          filters}) = _$FirestoreChatPageStateImpl;

  /// Is loading first page of chat objects
  @override
  bool get isLoadingData;

  /// Determines if Cubit is fetching more data from firestore
  @override
  bool get isFetchingMore;

  /// Chat list from firestore
  @override
  FirestorePagedList<FirestoreChat> get chats;

  /// Helper list of users used to get theirs ids for chat filtering
  @override
  FirestorePagedList<FirestoreUser> get filteredUsersHelperList;

  /// Filters used for chat collection (firstly for users)
  @override
  FirestoreChatFilter get filters;

  /// Create a copy of FirestoreChatPageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FirestoreChatPageStateImplCopyWith<_$FirestoreChatPageStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
