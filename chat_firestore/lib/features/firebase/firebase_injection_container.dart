import 'package:chat_firestore/core/di/injection_container.dart';
import 'package:chat_firestore/features/firebase/data/datasources/firebase_auth_datasource.dart';
import 'package:chat_firestore/features/firebase/data/datasources/firebase_storage_datasource.dart';
import 'package:chat_firestore/features/firebase/data/datasources/firestore_chat_datasource.dart';
import 'package:chat_firestore/features/firebase/data/datasources/firestore_datasource.dart';
import 'package:chat_firestore/features/firebase/data/repositories/firebase_auth_repository.dart';
import 'package:chat_firestore/features/firebase/data/repositories/firebase_storage_repository.dart';
import 'package:chat_firestore/features/firebase/data/repositories/firestore_chat_repository.dart';
import 'package:chat_firestore/features/firebase/data/repositories/firestore_repository.dart';
import 'package:chat_firestore/features/firebase/domain/datasources/i_firebase_auth_datasource.dart';
import 'package:chat_firestore/features/firebase/domain/datasources/i_firebase_storage_datasource.dart';
import 'package:chat_firestore/features/firebase/domain/datasources/i_firestore_chat_datasource.dart';
import 'package:chat_firestore/features/firebase/domain/datasources/i_firestore_datasource.dart';
import 'package:chat_firestore/features/firebase/domain/repositories/i_firebase_auth_repository.dart';
import 'package:chat_firestore/features/firebase/domain/repositories/i_firebase_storage_repository.dart';
import 'package:chat_firestore/features/firebase/domain/repositories/i_firestore_chat_repository.dart';
import 'package:chat_firestore/features/firebase/domain/repositories/i_firestore_repository.dart';
import 'package:chat_firestore/features/firebase/presentation/auth/cubit/firebase_auth_controller_cubit.dart';
import 'package:chat_firestore/features/firebase/presentation/chat/cubit/firestore_chat_conversation_cubit.dart';
import 'package:chat_firestore/features/firebase/presentation/chat/cubit/firestore_chat_filter_page_cubit.dart';
import 'package:chat_firestore/features/firebase/presentation/chat/cubit/firestore_chat_listener_cubit.dart';
import 'package:chat_firestore/features/firebase/presentation/chat/cubit/firestore_chat_page_cubit.dart';
import 'package:chat_firestore/features/firebase/presentation/chat/cubit/firestore_create_group_chat_page_cubit.dart';
import 'package:chat_firestore/features/firebase/presentation/home/cubit/firebase_fill_in_data_cubit.dart';
import 'package:chat_firestore/features/firebase/presentation/home/cubit/firebase_home_cubit.dart';
import 'package:chat_firestore/features/firebase/presentation/login/cubit/firebase_login_cubit.dart';
import 'package:chat_firestore/features/firebase/presentation/main_manager/cubit/firebase_main_page_manager_cubit.dart';
import 'package:chat_firestore/features/firebase/presentation/routing/cubit/firebase_routing_manager_cubit.dart';
import 'package:chat_firestore/features/firebase/presentation/verify_email/cubit/firebase_verify_email_cubit.dart';

/// Injection container for firebase datasources, repositrories
mixin FirebaseInjectionContainer on Injector {
  @override
  Future<void> init() async {
    await super.init();

    // DATASOURCE
    sl.registerLazySingleton<IFirebaseAuthDatasource>(
        FirebaseAuthDatasource.new);
    sl.registerLazySingleton<IFirestoreDatasource>(FirestoreDatasource.new);
    sl.registerLazySingleton<IFirestoreChatDatasource>(
        FirestoreChatDatasource.new);
    sl.registerLazySingleton<IFirebaseStorageDatasource>(
        FirebaseStorageDatasource.new);

    // REPOSITORY
    sl.registerLazySingleton<IFirebaseAuthRepository>(
        () => FirebaseAuthRepository(sl()));
    sl.registerLazySingleton<IFirestoreRepository>(
        () => FirestoreRepository(sl()));
    sl.registerLazySingleton<IFirestoreChatRepository>(
        () => FirestoreChatRepository(sl()));
    sl.registerLazySingleton<IFirebaseStorageRepository>(
        () => FirebaseStorageRepository(sl()));

    // CUBIT
    sl.registerFactory<FirebaseLoginCubit>(() => FirebaseLoginCubit(sl()));
    sl.registerFactory<FirestoreCreateGroupChatPageCubit>(
        FirestoreCreateGroupChatPageCubit.new);
    sl.registerFactory<FirestoreChatFilterPageCubit>(
        FirestoreChatFilterPageCubit.new);
    sl.registerFactory<FirestoreChatConversationCubit>(
        () => FirestoreChatConversationCubit(sl()));
    sl.registerFactory<FirestoreChatPageCubit>(
        () => FirestoreChatPageCubit(sl(), sl()));
    sl.registerFactory<FirebaseFillInDataCubit>(
        () => FirebaseFillInDataCubit(sl(), sl()));
    sl.registerFactory<FirebaseHomeCubit>(() => FirebaseHomeCubit(sl()));
    sl.registerLazySingleton<FirebaseAuthControllerCubit>(
        () => FirebaseAuthControllerCubit(sl()));
    sl.registerLazySingleton<FirebaseRoutingManagerCubit>(
        FirebaseRoutingManagerCubit.new);
    sl.registerFactory<FirebaseVerifyEmailCubit>(
        () => FirebaseVerifyEmailCubit(sl()));

    sl.registerLazySingleton<FirebaseMainPageManagerCubit>(
        () => FirebaseMainPageManagerCubit(sl()));
    sl.registerLazySingleton<FirestoreChatListenerCubit>(
        () => FirestoreChatListenerCubit(sl()));
  }
}
