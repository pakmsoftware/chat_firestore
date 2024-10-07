// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'firebase_home_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FirebaseHomeState {
  /// Is page initialization
  bool get isPageInit => throw _privateConstructorUsedError;

  /// Is loading initial first page data
  bool get isLoadingData => throw _privateConstructorUsedError;

  /// Is fetching more data on scrolling
  bool get isFetchingMoreData => throw _privateConstructorUsedError;

  /// Shows fill in data form for user that do not exist in firestore
  bool get showFillDataForm => throw _privateConstructorUsedError;

  /// Checkboxes next to users mode for creating a group caht
  bool get isSelectUsersMode => throw _privateConstructorUsedError;

  /// List of firestore users
  FirestorePagedList<FirestoreUser> get userList =>
      throw _privateConstructorUsedError;

  /// Selected users for group chat
  List<FirestoreUser> get selectedUsersForGroupChat =>
      throw _privateConstructorUsedError;

  /// Used filters for users list
  FirestoreUserFilterRequest get filters => throw _privateConstructorUsedError;

  /// Used filters from filters page
  FirestoreChatFilter get uiFilters => throw _privateConstructorUsedError;

  /// Logged user from firestore
  FirestoreUser? get user => throw _privateConstructorUsedError;

  /// Create a copy of FirebaseHomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FirebaseHomeStateCopyWith<FirebaseHomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FirebaseHomeStateCopyWith<$Res> {
  factory $FirebaseHomeStateCopyWith(
          FirebaseHomeState value, $Res Function(FirebaseHomeState) then) =
      _$FirebaseHomeStateCopyWithImpl<$Res, FirebaseHomeState>;
  @useResult
  $Res call(
      {bool isPageInit,
      bool isLoadingData,
      bool isFetchingMoreData,
      bool showFillDataForm,
      bool isSelectUsersMode,
      FirestorePagedList<FirestoreUser> userList,
      List<FirestoreUser> selectedUsersForGroupChat,
      FirestoreUserFilterRequest filters,
      FirestoreChatFilter uiFilters,
      FirestoreUser? user});

  $FirestoreUserFilterRequestCopyWith<$Res> get filters;
  $FirestoreChatFilterCopyWith<$Res> get uiFilters;
  $FirestoreUserCopyWith<$Res>? get user;
}

/// @nodoc
class _$FirebaseHomeStateCopyWithImpl<$Res, $Val extends FirebaseHomeState>
    implements $FirebaseHomeStateCopyWith<$Res> {
  _$FirebaseHomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FirebaseHomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPageInit = null,
    Object? isLoadingData = null,
    Object? isFetchingMoreData = null,
    Object? showFillDataForm = null,
    Object? isSelectUsersMode = null,
    Object? userList = null,
    Object? selectedUsersForGroupChat = null,
    Object? filters = null,
    Object? uiFilters = null,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      isPageInit: null == isPageInit
          ? _value.isPageInit
          : isPageInit // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingData: null == isLoadingData
          ? _value.isLoadingData
          : isLoadingData // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetchingMoreData: null == isFetchingMoreData
          ? _value.isFetchingMoreData
          : isFetchingMoreData // ignore: cast_nullable_to_non_nullable
              as bool,
      showFillDataForm: null == showFillDataForm
          ? _value.showFillDataForm
          : showFillDataForm // ignore: cast_nullable_to_non_nullable
              as bool,
      isSelectUsersMode: null == isSelectUsersMode
          ? _value.isSelectUsersMode
          : isSelectUsersMode // ignore: cast_nullable_to_non_nullable
              as bool,
      userList: null == userList
          ? _value.userList
          : userList // ignore: cast_nullable_to_non_nullable
              as FirestorePagedList<FirestoreUser>,
      selectedUsersForGroupChat: null == selectedUsersForGroupChat
          ? _value.selectedUsersForGroupChat
          : selectedUsersForGroupChat // ignore: cast_nullable_to_non_nullable
              as List<FirestoreUser>,
      filters: null == filters
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as FirestoreUserFilterRequest,
      uiFilters: null == uiFilters
          ? _value.uiFilters
          : uiFilters // ignore: cast_nullable_to_non_nullable
              as FirestoreChatFilter,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as FirestoreUser?,
    ) as $Val);
  }

  /// Create a copy of FirebaseHomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FirestoreUserFilterRequestCopyWith<$Res> get filters {
    return $FirestoreUserFilterRequestCopyWith<$Res>(_value.filters, (value) {
      return _then(_value.copyWith(filters: value) as $Val);
    });
  }

  /// Create a copy of FirebaseHomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FirestoreChatFilterCopyWith<$Res> get uiFilters {
    return $FirestoreChatFilterCopyWith<$Res>(_value.uiFilters, (value) {
      return _then(_value.copyWith(uiFilters: value) as $Val);
    });
  }

  /// Create a copy of FirebaseHomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $FirestoreUserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $FirestoreUserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FirebaseHomeStateImplCopyWith<$Res>
    implements $FirebaseHomeStateCopyWith<$Res> {
  factory _$$FirebaseHomeStateImplCopyWith(_$FirebaseHomeStateImpl value,
          $Res Function(_$FirebaseHomeStateImpl) then) =
      __$$FirebaseHomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isPageInit,
      bool isLoadingData,
      bool isFetchingMoreData,
      bool showFillDataForm,
      bool isSelectUsersMode,
      FirestorePagedList<FirestoreUser> userList,
      List<FirestoreUser> selectedUsersForGroupChat,
      FirestoreUserFilterRequest filters,
      FirestoreChatFilter uiFilters,
      FirestoreUser? user});

  @override
  $FirestoreUserFilterRequestCopyWith<$Res> get filters;
  @override
  $FirestoreChatFilterCopyWith<$Res> get uiFilters;
  @override
  $FirestoreUserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$FirebaseHomeStateImplCopyWithImpl<$Res>
    extends _$FirebaseHomeStateCopyWithImpl<$Res, _$FirebaseHomeStateImpl>
    implements _$$FirebaseHomeStateImplCopyWith<$Res> {
  __$$FirebaseHomeStateImplCopyWithImpl(_$FirebaseHomeStateImpl _value,
      $Res Function(_$FirebaseHomeStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of FirebaseHomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPageInit = null,
    Object? isLoadingData = null,
    Object? isFetchingMoreData = null,
    Object? showFillDataForm = null,
    Object? isSelectUsersMode = null,
    Object? userList = null,
    Object? selectedUsersForGroupChat = null,
    Object? filters = null,
    Object? uiFilters = null,
    Object? user = freezed,
  }) {
    return _then(_$FirebaseHomeStateImpl(
      isPageInit: null == isPageInit
          ? _value.isPageInit
          : isPageInit // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadingData: null == isLoadingData
          ? _value.isLoadingData
          : isLoadingData // ignore: cast_nullable_to_non_nullable
              as bool,
      isFetchingMoreData: null == isFetchingMoreData
          ? _value.isFetchingMoreData
          : isFetchingMoreData // ignore: cast_nullable_to_non_nullable
              as bool,
      showFillDataForm: null == showFillDataForm
          ? _value.showFillDataForm
          : showFillDataForm // ignore: cast_nullable_to_non_nullable
              as bool,
      isSelectUsersMode: null == isSelectUsersMode
          ? _value.isSelectUsersMode
          : isSelectUsersMode // ignore: cast_nullable_to_non_nullable
              as bool,
      userList: null == userList
          ? _value.userList
          : userList // ignore: cast_nullable_to_non_nullable
              as FirestorePagedList<FirestoreUser>,
      selectedUsersForGroupChat: null == selectedUsersForGroupChat
          ? _value._selectedUsersForGroupChat
          : selectedUsersForGroupChat // ignore: cast_nullable_to_non_nullable
              as List<FirestoreUser>,
      filters: null == filters
          ? _value.filters
          : filters // ignore: cast_nullable_to_non_nullable
              as FirestoreUserFilterRequest,
      uiFilters: null == uiFilters
          ? _value.uiFilters
          : uiFilters // ignore: cast_nullable_to_non_nullable
              as FirestoreChatFilter,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as FirestoreUser?,
    ));
  }
}

/// @nodoc

class _$FirebaseHomeStateImpl extends _FirebaseHomeState {
  _$FirebaseHomeStateImpl(
      {required this.isPageInit,
      required this.isLoadingData,
      required this.isFetchingMoreData,
      required this.showFillDataForm,
      required this.isSelectUsersMode,
      required this.userList,
      required final List<FirestoreUser> selectedUsersForGroupChat,
      required this.filters,
      required this.uiFilters,
      this.user})
      : _selectedUsersForGroupChat = selectedUsersForGroupChat,
        super._();

  /// Is page initialization
  @override
  final bool isPageInit;

  /// Is loading initial first page data
  @override
  final bool isLoadingData;

  /// Is fetching more data on scrolling
  @override
  final bool isFetchingMoreData;

  /// Shows fill in data form for user that do not exist in firestore
  @override
  final bool showFillDataForm;

  /// Checkboxes next to users mode for creating a group caht
  @override
  final bool isSelectUsersMode;

  /// List of firestore users
  @override
  final FirestorePagedList<FirestoreUser> userList;

  /// Selected users for group chat
  final List<FirestoreUser> _selectedUsersForGroupChat;

  /// Selected users for group chat
  @override
  List<FirestoreUser> get selectedUsersForGroupChat {
    if (_selectedUsersForGroupChat is EqualUnmodifiableListView)
      return _selectedUsersForGroupChat;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedUsersForGroupChat);
  }

  /// Used filters for users list
  @override
  final FirestoreUserFilterRequest filters;

  /// Used filters from filters page
  @override
  final FirestoreChatFilter uiFilters;

  /// Logged user from firestore
  @override
  final FirestoreUser? user;

  @override
  String toString() {
    return 'FirebaseHomeState(isPageInit: $isPageInit, isLoadingData: $isLoadingData, isFetchingMoreData: $isFetchingMoreData, showFillDataForm: $showFillDataForm, isSelectUsersMode: $isSelectUsersMode, userList: $userList, selectedUsersForGroupChat: $selectedUsersForGroupChat, filters: $filters, uiFilters: $uiFilters, user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FirebaseHomeStateImpl &&
            (identical(other.isPageInit, isPageInit) ||
                other.isPageInit == isPageInit) &&
            (identical(other.isLoadingData, isLoadingData) ||
                other.isLoadingData == isLoadingData) &&
            (identical(other.isFetchingMoreData, isFetchingMoreData) ||
                other.isFetchingMoreData == isFetchingMoreData) &&
            (identical(other.showFillDataForm, showFillDataForm) ||
                other.showFillDataForm == showFillDataForm) &&
            (identical(other.isSelectUsersMode, isSelectUsersMode) ||
                other.isSelectUsersMode == isSelectUsersMode) &&
            (identical(other.userList, userList) ||
                other.userList == userList) &&
            const DeepCollectionEquality().equals(
                other._selectedUsersForGroupChat, _selectedUsersForGroupChat) &&
            (identical(other.filters, filters) || other.filters == filters) &&
            (identical(other.uiFilters, uiFilters) ||
                other.uiFilters == uiFilters) &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isPageInit,
      isLoadingData,
      isFetchingMoreData,
      showFillDataForm,
      isSelectUsersMode,
      userList,
      const DeepCollectionEquality().hash(_selectedUsersForGroupChat),
      filters,
      uiFilters,
      user);

  /// Create a copy of FirebaseHomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FirebaseHomeStateImplCopyWith<_$FirebaseHomeStateImpl> get copyWith =>
      __$$FirebaseHomeStateImplCopyWithImpl<_$FirebaseHomeStateImpl>(
          this, _$identity);
}

abstract class _FirebaseHomeState extends FirebaseHomeState {
  factory _FirebaseHomeState(
      {required final bool isPageInit,
      required final bool isLoadingData,
      required final bool isFetchingMoreData,
      required final bool showFillDataForm,
      required final bool isSelectUsersMode,
      required final FirestorePagedList<FirestoreUser> userList,
      required final List<FirestoreUser> selectedUsersForGroupChat,
      required final FirestoreUserFilterRequest filters,
      required final FirestoreChatFilter uiFilters,
      final FirestoreUser? user}) = _$FirebaseHomeStateImpl;
  _FirebaseHomeState._() : super._();

  /// Is page initialization
  @override
  bool get isPageInit;

  /// Is loading initial first page data
  @override
  bool get isLoadingData;

  /// Is fetching more data on scrolling
  @override
  bool get isFetchingMoreData;

  /// Shows fill in data form for user that do not exist in firestore
  @override
  bool get showFillDataForm;

  /// Checkboxes next to users mode for creating a group caht
  @override
  bool get isSelectUsersMode;

  /// List of firestore users
  @override
  FirestorePagedList<FirestoreUser> get userList;

  /// Selected users for group chat
  @override
  List<FirestoreUser> get selectedUsersForGroupChat;

  /// Used filters for users list
  @override
  FirestoreUserFilterRequest get filters;

  /// Used filters from filters page
  @override
  FirestoreChatFilter get uiFilters;

  /// Logged user from firestore
  @override
  FirestoreUser? get user;

  /// Create a copy of FirebaseHomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FirebaseHomeStateImplCopyWith<_$FirebaseHomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
