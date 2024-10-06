// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i13;
import 'package:chat_firestore/features/firebase/domain/models/firestore_chat.dart'
    as _i16;
import 'package:chat_firestore/features/firebase/domain/models/firestore_chat_filter.dart'
    as _i18;
import 'package:chat_firestore/features/firebase/domain/models/firestore_user.dart'
    as _i17;
import 'package:chat_firestore/features/firebase/presentation/auth/widgets/firebase_auth_controller_page.dart'
    as _i1;
import 'package:chat_firestore/features/firebase/presentation/auth/widgets/firebase_auth_loading_page.dart'
    as _i2;
import 'package:chat_firestore/features/firebase/presentation/chat/widgets/firestore_chat_conversation_page.dart'
    as _i8;
import 'package:chat_firestore/features/firebase/presentation/chat/widgets/firestore_chat_page.dart'
    as _i9;
import 'package:chat_firestore/features/firebase/presentation/chat/widgets/firestore_filter_page.dart'
    as _i11;
import 'package:chat_firestore/features/firebase/presentation/home/widgets/firebase_fill_in_data_page.dart'
    as _i3;
import 'package:chat_firestore/features/firebase/presentation/home/widgets/firebase_home_page.dart'
    as _i4;
import 'package:chat_firestore/features/firebase/presentation/home/widgets/firestore_edit_user_page.dart'
    as _i10;
import 'package:chat_firestore/features/firebase/presentation/home/widgets/firestore_user_details_page.dart'
    as _i12;
import 'package:chat_firestore/features/firebase/presentation/login/widgets/firebase_login_page.dart'
    as _i5;
import 'package:chat_firestore/features/firebase/presentation/main_manager/widgets/firebase_main_page.dart'
    as _i6;
import 'package:chat_firestore/features/firebase/presentation/verify_email/widgets/firebase_verify_email_page.dart'
    as _i7;
import 'package:firebase_auth/firebase_auth.dart' as _i14;
import 'package:flutter/material.dart' as _i15;

/// generated route for
/// [_i1.FirebaseAuthControllerPage]
class FirebaseAuthControllerRoute extends _i13.PageRouteInfo<void> {
  const FirebaseAuthControllerRoute({List<_i13.PageRouteInfo>? children})
      : super(
          FirebaseAuthControllerRoute.name,
          initialChildren: children,
        );

  static const String name = 'FirebaseAuthControllerRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i1.FirebaseAuthControllerPage();
    },
  );
}

/// generated route for
/// [_i2.FirebaseAuthLoadingPage]
class FirebaseAuthLoadingRoute extends _i13.PageRouteInfo<void> {
  const FirebaseAuthLoadingRoute({List<_i13.PageRouteInfo>? children})
      : super(
          FirebaseAuthLoadingRoute.name,
          initialChildren: children,
        );

  static const String name = 'FirebaseAuthLoadingRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i2.FirebaseAuthLoadingPage();
    },
  );
}

/// generated route for
/// [_i3.FirebaseFillInDataPage]
class FirebaseFillInDataRoute extends _i13.PageRouteInfo<void> {
  const FirebaseFillInDataRoute({List<_i13.PageRouteInfo>? children})
      : super(
          FirebaseFillInDataRoute.name,
          initialChildren: children,
        );

  static const String name = 'FirebaseFillInDataRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i3.FirebaseFillInDataPage();
    },
  );
}

/// generated route for
/// [_i4.FirebaseHomePage]
class FirebaseHomeRoute extends _i13.PageRouteInfo<void> {
  const FirebaseHomeRoute({List<_i13.PageRouteInfo>? children})
      : super(
          FirebaseHomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'FirebaseHomeRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i4.FirebaseHomePage();
    },
  );
}

/// generated route for
/// [_i5.FirebaseLoginPage]
class FirebaseLoginRoute extends _i13.PageRouteInfo<void> {
  const FirebaseLoginRoute({List<_i13.PageRouteInfo>? children})
      : super(
          FirebaseLoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'FirebaseLoginRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i5.FirebaseLoginPage();
    },
  );
}

/// generated route for
/// [_i6.FirebaseMainPage]
class FirebaseMainRoute extends _i13.PageRouteInfo<void> {
  const FirebaseMainRoute({List<_i13.PageRouteInfo>? children})
      : super(
          FirebaseMainRoute.name,
          initialChildren: children,
        );

  static const String name = 'FirebaseMainRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i6.FirebaseMainPage();
    },
  );
}

/// generated route for
/// [_i7.FirebaseVerifyEmailPage]
class FirebaseVerifyEmailRoute
    extends _i13.PageRouteInfo<FirebaseVerifyEmailRouteArgs> {
  FirebaseVerifyEmailRoute({
    _i14.User? user,
    _i15.Key? key,
    List<_i13.PageRouteInfo>? children,
  }) : super(
          FirebaseVerifyEmailRoute.name,
          args: FirebaseVerifyEmailRouteArgs(
            user: user,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'FirebaseVerifyEmailRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<FirebaseVerifyEmailRouteArgs>(
          orElse: () => const FirebaseVerifyEmailRouteArgs());
      return _i7.FirebaseVerifyEmailPage(
        user: args.user,
        key: args.key,
      );
    },
  );
}

class FirebaseVerifyEmailRouteArgs {
  const FirebaseVerifyEmailRouteArgs({
    this.user,
    this.key,
  });

  final _i14.User? user;

  final _i15.Key? key;

  @override
  String toString() {
    return 'FirebaseVerifyEmailRouteArgs{user: $user, key: $key}';
  }
}

/// generated route for
/// [_i8.FirestoreChatConversationPage]
class FirestoreChatConversationRoute
    extends _i13.PageRouteInfo<FirestoreChatConversationRouteArgs> {
  FirestoreChatConversationRoute({
    _i15.Key? key,
    _i16.FirestoreChat? chat,
    List<_i17.FirestoreUser>? users,
    List<_i13.PageRouteInfo>? children,
  }) : super(
          FirestoreChatConversationRoute.name,
          args: FirestoreChatConversationRouteArgs(
            key: key,
            chat: chat,
            users: users,
          ),
          initialChildren: children,
        );

  static const String name = 'FirestoreChatConversationRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<FirestoreChatConversationRouteArgs>(
          orElse: () => const FirestoreChatConversationRouteArgs());
      return _i8.FirestoreChatConversationPage(
        key: args.key,
        chat: args.chat,
        users: args.users,
      );
    },
  );
}

class FirestoreChatConversationRouteArgs {
  const FirestoreChatConversationRouteArgs({
    this.key,
    this.chat,
    this.users,
  });

  final _i15.Key? key;

  final _i16.FirestoreChat? chat;

  final List<_i17.FirestoreUser>? users;

  @override
  String toString() {
    return 'FirestoreChatConversationRouteArgs{key: $key, chat: $chat, users: $users}';
  }
}

/// generated route for
/// [_i9.FirestoreChatPage]
class FirestoreChatRoute extends _i13.PageRouteInfo<void> {
  const FirestoreChatRoute({List<_i13.PageRouteInfo>? children})
      : super(
          FirestoreChatRoute.name,
          initialChildren: children,
        );

  static const String name = 'FirestoreChatRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      return const _i9.FirestoreChatPage();
    },
  );
}

/// generated route for
/// [_i10.FirestoreEditUserPage]
class FirestoreEditUserRoute
    extends _i13.PageRouteInfo<FirestoreEditUserRouteArgs> {
  FirestoreEditUserRoute({
    _i15.Key? key,
    _i17.FirestoreUser? user,
    List<_i13.PageRouteInfo>? children,
  }) : super(
          FirestoreEditUserRoute.name,
          args: FirestoreEditUserRouteArgs(
            key: key,
            user: user,
          ),
          initialChildren: children,
        );

  static const String name = 'FirestoreEditUserRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<FirestoreEditUserRouteArgs>(
          orElse: () => const FirestoreEditUserRouteArgs());
      return _i10.FirestoreEditUserPage(
        key: args.key,
        user: args.user,
      );
    },
  );
}

class FirestoreEditUserRouteArgs {
  const FirestoreEditUserRouteArgs({
    this.key,
    this.user,
  });

  final _i15.Key? key;

  final _i17.FirestoreUser? user;

  @override
  String toString() {
    return 'FirestoreEditUserRouteArgs{key: $key, user: $user}';
  }
}

/// generated route for
/// [_i11.FirestoreFilterPage]
class FirestoreFilterRoute
    extends _i13.PageRouteInfo<FirestoreFilterRouteArgs> {
  FirestoreFilterRoute({
    _i15.Key? key,
    dynamic Function(_i18.FirestoreChatFilter)? applyFiltersCallback,
    _i18.FirestoreChatFilter? initialFilters,
    List<_i13.PageRouteInfo>? children,
  }) : super(
          FirestoreFilterRoute.name,
          args: FirestoreFilterRouteArgs(
            key: key,
            applyFiltersCallback: applyFiltersCallback,
            initialFilters: initialFilters,
          ),
          initialChildren: children,
        );

  static const String name = 'FirestoreFilterRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<FirestoreFilterRouteArgs>(
          orElse: () => const FirestoreFilterRouteArgs());
      return _i11.FirestoreFilterPage(
        key: args.key,
        applyFiltersCallback: args.applyFiltersCallback,
        initialFilters: args.initialFilters,
      );
    },
  );
}

class FirestoreFilterRouteArgs {
  const FirestoreFilterRouteArgs({
    this.key,
    this.applyFiltersCallback,
    this.initialFilters,
  });

  final _i15.Key? key;

  final dynamic Function(_i18.FirestoreChatFilter)? applyFiltersCallback;

  final _i18.FirestoreChatFilter? initialFilters;

  @override
  String toString() {
    return 'FirestoreFilterRouteArgs{key: $key, applyFiltersCallback: $applyFiltersCallback, initialFilters: $initialFilters}';
  }
}

/// generated route for
/// [_i12.FirestoreUserDetailsPage]
class FirestoreUserDetailsRoute
    extends _i13.PageRouteInfo<FirestoreUserDetailsRouteArgs> {
  FirestoreUserDetailsRoute({
    required _i17.FirestoreUser user,
    _i15.Key? key,
    List<_i13.PageRouteInfo>? children,
  }) : super(
          FirestoreUserDetailsRoute.name,
          args: FirestoreUserDetailsRouteArgs(
            user: user,
            key: key,
          ),
          initialChildren: children,
        );

  static const String name = 'FirestoreUserDetailsRoute';

  static _i13.PageInfo page = _i13.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<FirestoreUserDetailsRouteArgs>();
      return _i12.FirestoreUserDetailsPage(
        user: args.user,
        key: args.key,
      );
    },
  );
}

class FirestoreUserDetailsRouteArgs {
  const FirestoreUserDetailsRouteArgs({
    required this.user,
    this.key,
  });

  final _i17.FirestoreUser user;

  final _i15.Key? key;

  @override
  String toString() {
    return 'FirestoreUserDetailsRouteArgs{user: $user, key: $key}';
  }
}
