import 'package:chat_firestore/features/firebase/domain/models/firestore_chat_filter.dart';
import 'package:chat_firestore/features/firebase/domain/models/firestore_paged_list.dart';
import 'package:chat_firestore/features/firebase/domain/models/firestore_user.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'firestore_chat_filter_page_state.dart';
part 'firestore_chat_filter_page_cubit.freezed.dart';

/// Cubit setting current state of filters
class FirestoreChatFilterPageCubit extends Cubit<FirestoreChatFilterPageState> {
  FirestoreChatFilterPageCubit()
      : super(FirestoreChatFilterPageState(
          filters: FirestoreChatFilter.empty(),
          users: FirestorePagedList.empty(),
        ));

  /// Page initialization to load predefined filters
  void init(FirestoreChatFilter filters) {
    emit(state.copyWith(filters: filters));
  }

  /// Checks user and adds it to filter
  void checkUser(FirestoreUser user) {}

  /// Unchecks user and removes it from filters
  void uncheckUser(FirestoreUser user) {}

  /// Sets minimal age for filters
  void setMinAge(int? age) {
    emit(state.copyWith(filters: state.filters.copyWith(minAge: age)));
  }

  /// Sets maximal age for filters
  void setMaxAge(int? age) {
    emit(state.copyWith(filters: state.filters.copyWith(maxAge: age)));
  }
}
