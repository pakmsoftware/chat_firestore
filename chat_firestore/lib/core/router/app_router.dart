import 'package:chat_firestore/core/router/app_router.gr.dart';
import 'package:auto_route/auto_route.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Page,Route',
)
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();
  @override
  final List<AutoRoute> routes = [
    // Firebase
    AutoRoute(page: FirebaseAuthControllerRoute.page, initial: true),
    AutoRoute(page: FirebaseLoginRoute.page),
    AutoRoute(page: FirebaseVerifyEmailRoute.page),
    AutoRoute(page: FirebaseHomeRoute.page),
    AutoRoute(page: FirebaseFillInDataRoute.page),
    AutoRoute(page: FirestoreUserDetailsRoute.page),
    AutoRoute(page: FirestoreEditUserRoute.page),
    AutoRoute(page: FirebaseMainRoute.page),
    AutoRoute(page: FirestoreChatRoute.page),
    AutoRoute(page: FirestoreChatConversationRoute.page),
    AutoRoute(page: FirestoreFilterRoute.page),
  ];
}
