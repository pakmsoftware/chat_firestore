import 'package:chat_firestore/core/app/type_aliases.dart';
import 'package:chat_firestore/features/firebase/domain/models/firestore_list_request.dart';
import 'package:chat_firestore/features/firebase/domain/models/firestore_paged_list.dart';
import 'package:chat_firestore/features/firebase/domain/models/firestore_user.dart';
import 'package:chat_firestore/features/firebase/domain/models/firestore_user_filter_request.dart';

/// Repository layer for getting data from firestore database
abstract class IFirestoreRepository {
  /// Adds user to /user collection
  FutureFailable<bool> addUser(FirestoreUser user);

  /// Gets single user from /users collection based on [userId]
  FutureFailable<FirestoreUser?> getUser(String userId);

  /// List users with pagination
  FutureFailable<FirestorePagedList<FirestoreUser>> listUsers(
      FirestoreListRequest request);

  /// Query users by name and filter them by other filtering
  FutureFailable<FirestorePagedList<FirestoreUser>> filterUsers({
    /// List general request with pagination
    required FirestoreListRequest request,

    /// Used filtering
    required FirestoreUserFilterRequest filters,
  });
}
