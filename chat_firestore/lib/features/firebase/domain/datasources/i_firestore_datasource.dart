import 'package:chat_firestore/features/firebase/domain/models/firestore_list_request.dart';
import 'package:chat_firestore/features/firebase/domain/models/firestore_paged_list.dart';
import 'package:chat_firestore/features/firebase/domain/models/firestore_user.dart';
import 'package:chat_firestore/features/firebase/domain/models/firestore_user_filter_request.dart';

/// Interface for Firestore database to get,update or add collections or single objects
abstract class IFirestoreDatasource {
  /// Adds user to /users collection
  Future<bool> addUser(FirestoreUser user);

  /// Gets single user from /users collection based on [userId]
  Future<FirestoreUser?> getUser(String userId);

  /// List users with pagination
  Future<FirestorePagedList<FirestoreUser>> listUsers(
    FirestoreListRequest request,
  );

  /// Query users by name and filter them by other filtering
  Future<FirestorePagedList<FirestoreUser>> filterUsers({
    /// List general request with pagination
    required FirestoreListRequest request,

    /// Used filtering
    required FirestoreUserFilterRequest filters,
  });
}
