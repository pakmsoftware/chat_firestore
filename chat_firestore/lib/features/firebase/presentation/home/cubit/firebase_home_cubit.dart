import 'dart:async';

import 'package:chat_firestore/features/firebase/domain/models/firestore_chat_filter.dart';
import 'package:chat_firestore/features/firebase/domain/models/firestore_list_request.dart';
import 'package:chat_firestore/features/firebase/domain/models/firestore_paged_list.dart';
import 'package:chat_firestore/features/firebase/domain/models/firestore_user.dart';
import 'package:chat_firestore/features/firebase/domain/models/firestore_user_filter_request.dart';
import 'package:chat_firestore/features/firebase/domain/repositories/i_firestore_repository.dart';
import 'package:chat_firestore/features/firebase/presentation/auth/cubit/firebase_auth_controller_cubit.dart';
import 'package:chat_firestore/core/di/injection_container.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:chat_firestore/core/helper/future_failable_extension.dart';

part 'firebase_home_state.dart';
part 'firebase_home_cubit.freezed.dart';

/// Cubit controlling main page for firebase
class FirebaseHomeCubit extends Cubit<FirebaseHomeState> {
  FirebaseHomeCubit(
    this._dbRepository,
  ) : super(FirebaseHomeState(
          isFetchingMoreData: false,
          isLoadingData: false,
          isPageInit: false,
          showFillDataForm: false,
          isSelectUsersMode: false,
          userList: FirestorePagedList.empty(),
          filters: FirestoreUserFilterRequest.empty(),
          uiFilters: FirestoreChatFilter.empty(),
          selectedUsersForGroupChat: [],
        ));

  final IFirestoreRepository _dbRepository;

  /// Page initialization
  Future<void> init() async {
    emit(state.copyWith(isPageInit: true));
    final authUser = sl<FirebaseAuthControllerCubit>().state.loggedUser;
    // Try to get logged auth user from firestore
    final firestoreUser =
        (await _dbRepository.getUser(authUser?.uid ?? '')).getData();

    emit(state.copyWith(
      isPageInit: false,
      showFillDataForm: firestoreUser == null,
      user: firestoreUser,
    ));

    /// If firestore user is not null -> try to fetch all users
    if (firestoreUser != null) {
      unawaited(fetchMoreUsers(useFirstPage: true));
    }
  }

  /// Fetch more users or fetch first page of users on init
  Future<void> fetchMoreUsers({bool useFirstPage = false}) async {
    if (state.isLoadingData || state.isFetchingMoreData) {
      return;
    }
    emit(state.copyWith(
      isLoadingData: useFirstPage,
      isFetchingMoreData: true,
    ));

    final request = FirestoreListRequest(
      orderBy: state.uiFilters.anyFiltersUsed ? 'age' : 'fullNameLower',
      orderBySecond: state.uiFilters.anyFiltersUsed ? 'fullNameLower' : null,
      pagination: useFirstPage
          ? state.userList.pagination.copyWith(lastDocument: null)
          : state.userList.pagination,
    );
    final pageData = (await _dbRepository.filterUsers(
      request: request,
      filters: state.filters,
    ))
        .getData();
    final mergedData = pageData?.mergeData(
      oldData: state.userList,
      useFirstPage: useFirstPage,
    );

    emit(state.copyWith(
      isLoadingData: false,
      isFetchingMoreData: false,
      userList: mergedData ?? state.userList,
    ));
  }

  /// Sets min age for filtering
  void setMinAgeFilter(int? minAge) {
    final filters = state.filters.copyWith(minAge: minAge);
    emit(state.copyWith(filters: filters));
  }

  /// Sets min age for filtering
  void setMaxAgeFilter(int? maxAge) {
    final filters = state.filters.copyWith(maxAge: maxAge);
    emit(state.copyWith(filters: filters));
  }

  /// Sets name query for filtering
  void autocompleteNameQuery(String? query) {
    final filters = state.filters.copyWith(nameQuery: query);
    emit(state.copyWith(filters: filters));

    // Then for autocomplete serarch for results
    unawaited(fetchMoreUsers(useFirstPage: true));
  }

  /// Apply filtering from Filtering page
  Future<void> applyFilters(FirestoreChatFilter filters) async {
    emit(state.copyWith(uiFilters: filters));
    if (!filters.anyFiltersUsed) {
      await fetchMoreUsers(useFirstPage: true);
      return;
    }

    // Else apply filtering
    final newFilters = state.filters.copyWith(
      minAge: filters.minAge,
      maxAge: filters.maxAge,
    );

    emit(state.copyWith(filters: newFilters));
    await fetchMoreUsers(useFirstPage: true);
  }

  /// Switch modes betweern creating single user chat and group chat
  void switchMode() {
    emit(state.copyWith(isSelectUsersMode: !state.isSelectUsersMode));
  }

  /// Select user for a group chat
  void checkUser(FirestoreUser user) {
    final newList = List.of(state.selectedUsersForGroupChat)..add(user);
    emit(state.copyWith(selectedUsersForGroupChat: newList));
  }

  /// Uncheck user for a group chat creation
  void uncheckUser(FirestoreUser user) {
    final newList = List.of(state.selectedUsersForGroupChat)
      ..removeWhere((e) => e.id == user.id);
    emit(state.copyWith(selectedUsersForGroupChat: newList));
  }

  /// Just before going to create group chat page, adds logged user to group chat users
  void addMeToChatUsers() {
    if (state.user == null ||
        state.selectedUsersForGroupChat.any((e) => e.id == state.user?.id)) {
      return;
    }
    checkUser(state.user!);
  }
}
