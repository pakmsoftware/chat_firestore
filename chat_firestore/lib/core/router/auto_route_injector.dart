import 'package:chat_firestore/core/router/app_router.dart';
import 'package:chat_firestore/core/di/injection_container.dart';

mixin AutoRouteInjector on Injector {
  @override
  Future<void> init() async {
    await super.init();
    sl.registerLazySingleton<AppRouter>(AppRouter.new);
  }
}
