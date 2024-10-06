import 'package:chat_firestore/core/router/app_router.dart';
import 'package:chat_firestore/core/di/injection_container.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'firebase_routing_manager_state.dart';
part 'firebase_routing_manager_cubit.freezed.dart';

/// Routing manager for firebase module. It is central cubit that apart from popping/pushing informs listeners that page must be refreshed
/// For example page below current oner must be refreshed on pop
class FirebaseRoutingManagerCubit extends Cubit<FirebaseRoutingManagerState> {
  FirebaseRoutingManagerCubit()
      : super(FirebaseRoutingManagerState(
          reloadPage: false,
        ));

  /// Pops current page and refreshes
  Future<void> popAndRefresh() async {
    await sl<AppRouter>().maybePop();
    _refreshPage();
  }

  void _refreshPage() {
    emit(state.copyWith(reloadPage: true));
    emit(state.copyWith(reloadPage: false));
  }
}
