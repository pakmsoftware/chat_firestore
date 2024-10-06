import 'package:chat_firestore/features/firebase/domain/models/firestore_chat.dart';
import 'package:chat_firestore/features/firebase/domain/models/firestore_chat_filter.dart';
import 'package:chat_firestore/features/firebase/domain/models/firestore_list_request.dart';
import 'package:chat_firestore/features/firebase/domain/models/firestore_paged_list.dart';
import 'package:chat_firestore/features/firebase/domain/models/firestore_pagination.dart';
import 'package:chat_firestore/features/firebase/domain/models/firestore_user.dart';
import 'package:chat_firestore/features/firebase/domain/repositories/i_firestore_chat_repository.dart';
import 'package:chat_firestore/features/firebase/domain/repositories/i_firestore_repository.dart';
import 'package:chat_firestore/features/firebase/presentation/auth/cubit/firebase_auth_controller_cubit.dart';
import 'package:chat_firestore/core/helper/future_failable_extension.dart';
import 'package:chat_firestore/core/di/injection_container.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'firestore_chat_page_state.dart';
part 'firestore_chat_page_cubit.freezed.dart';

/// Cubit controlling chats from firestore
class FirestoreChatPageCubit extends Cubit<FirestoreChatPageState> {
  FirestoreChatPageCubit(
    this._dbRepository,
    this._usersRepository,
  ) : super(FirestoreChatPageState(
          chats: FirestorePagedList.empty(),
          filters: FirestoreChatFilter.empty(),
          filteredUsersHelperList: FirestorePagedList.empty(),
          isFetchingMore: false,
          isLoadingData: false,
        ));

  /// Firestore db repository
  final IFirestoreChatRepository _dbRepository;

  /// Firestore user repository
  final IFirestoreRepository _usersRepository;

  /// Initialization - fetch fist page of chats
  Future<void> init() async {
    emit(state.copyWith(isLoadingData: true));

    await fetchMore(useFirstPage: true);

    emit(state.copyWith(isLoadingData: false));
  }

  /// Fetches more chat
  Future<void> fetchMore({bool useFirstPage = false}) async {
    emit(state.copyWith(isFetchingMore: true));

    final request = FirestoreListRequest(
      orderBy: 'lastMsgTimestamp',
      orderByDescending: true,
      pagination: useFirstPage
          ? state.chats.pagination.copyWith(lastDocument: null)
          : state.chats.pagination,
    );
    final userId =
        sl<FirebaseAuthControllerCubit>().state.loggedUser?.uid ?? '';
    final pageData =
        (await _dbRepository.listChats(userId: userId, request: request))
            .getData();
    final mergedData = pageData?.mergeData(
      oldData: state.chats,
      useFirstPage: useFirstPage,
    );

    emit(state.copyWith(
      isFetchingMore: false,
      chats: mergedData ?? state.chats,
    ));
  }

  /// Handles new received message from firestore stream
  Future<void> handleReceivedChat(FirestoreChat chat) async {
    final foundChatIndex = state.chats.data.indexWhere((e) => e.id == chat.id);

    // Move chat to the top and assign last message to it
    if (foundChatIndex >= 0) {
      // Move chat to top
      final newChatList = List.of(state.chats.data)
        ..removeAt(foundChatIndex)
        ..insert(0, chat);

      final newChatData = state.chats.copyWith(data: newChatList);
      emit(state.copyWith(chats: newChatData));
      return;
    }

    // Insert new chat at the beginning
    final newChatData = state.chats.copyWith(
      data: List.of(state.chats.data)..insert(0, chat),
    );
    emit(state.copyWith(chats: newChatData));
  }

  /// Fetch more users for chat filtering
  Future<void> _getUsers() async {
    final request = FirestoreListRequest(
      orderBy: 'age',
      pagination: FirestorePagination(),
    );

    final pageData = (await _usersRepository.filterUsers(
      request: request,
      filters: state.filters.toUserFilterRequest(),
    ))
        .getData();

    emit(state.copyWith(
      filteredUsersHelperList: pageData ?? state.filteredUsersHelperList,
    ));
  }

  /// Fetch more chats
  Future<void> _fetchMoreFilteredChats() async {
    final request = FirestoreListRequest(
      orderBy: 'lastMsgTimestamp',
      pagination: FirestorePagination(),
    );

    final userIds =
        state.filteredUsersHelperList.data.map((e) => e.id).toList();

    final pageData = (await _dbRepository.filterChatsByUserIds(
      request: request,
      userIds: userIds,
    ))
        .getData();

    emit(state.copyWith(
      chats: pageData ?? state.chats,
    ));
  }

  /// Filter users and then chat based on user filtered list
  Future<void> filterChats(FirestoreChatFilter filters) async {
    emit(state.copyWith(
      filters: filters,
      isLoadingData: true,
    ));

    if (!filters.anyFiltersUsed) {
      await fetchMore(useFirstPage: true);
      emit(state.copyWith(isLoadingData: false));
      return;
    }

    // Firstly get users to get their ids to filter chats by
    await _getUsers();

    // Then get chats by fetched users ids
    await _fetchMoreFilteredChats();

    emit(state.copyWith(isLoadingData: false));
  }
}
