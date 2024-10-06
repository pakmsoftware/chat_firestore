part of 'firebase_main_page_manager_cubit.dart';

@freezed
class FirebaseMainPageManagerState with _$FirebaseMainPageManagerState {
  factory FirebaseMainPageManagerState({
    /// Current active index for bottom menu
    required int currentIndex,

    /// Title of app bar
    required String appBarTitle,

    /// Extra actions for app bar
    @Default([]) List<Widget> extraActions,
  }) = _FirebaseMainPageManagerState;
}
