import 'package:chat_firestore/features/firebase/domain/repositories/i_firebase_auth_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'firebase_main_page_manager_state.dart';
part 'firebase_main_page_manager_cubit.freezed.dart';

/// Main manager controlling which page is displayed from bottom menu and what appbar
class FirebaseMainPageManagerCubit extends Cubit<FirebaseMainPageManagerState> {
  FirebaseMainPageManagerCubit(
    this._authRepository,
  ) : super(FirebaseMainPageManagerState(
          currentIndex: 0,
          appBarTitle: '',
        ));

  /// Firebase auth repository
  final IFirebaseAuthRepository _authRepository;

  /// Switches active page
  void setCurrentIndex(int index) {
    emit(state.copyWith(currentIndex: index));
  }

  /// Sets app bar title
  void setAppBarTitle(String title) {
    emit(state.copyWith(appBarTitle: title));
  }

  /// Sets extra actions
  void setExtraActions(List<Widget> extraActions) {
    emit(state.copyWith(extraActions: extraActions));
  }

  /// Signs out from firebase
  Future<void> signOut() async {
    await _authRepository.signOut();
  }
}
