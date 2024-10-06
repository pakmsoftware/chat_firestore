import 'package:chat_firestore/features/firebase/domain/datasources/i_firestore_datasource.dart';
import 'package:chat_firestore/features/firebase/domain/models/firestore_list_request.dart';
import 'package:chat_firestore/features/firebase/domain/models/firestore_paged_list.dart';
import 'package:chat_firestore/features/firebase/domain/models/firestore_user.dart';
import 'package:chat_firestore/features/firebase/domain/models/firestore_user_filter_request.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreDatasource extends IFirestoreDatasource {
  FirebaseFirestore get _db => FirebaseFirestore.instance;

  @override
  Future<bool> addUser(FirestoreUser user) async {
    final userToAdd =
        user.copyWith(fullNameLower: user.fullName.toLowerCase().trim());
    await _db.collection('users').doc(user.id).set(userToAdd.toJson());
    return true;
  }

  @override
  Future<FirestoreUser?> getUser(String userId) async {
    final map = (await _db.collection('users').doc(userId).get()).data();
    if (map != null) {
      return FirestoreUser.fromJson(map);
    }
    return null;
  }

  @override
  Future<FirestorePagedList<FirestoreUser>> listUsers(
      FirestoreListRequest request) async {
    final usedRequest = request.copyWith(collection: 'users');
    final preQuery = _db
        .collection('users')
        .orderBy(request.orderBy, descending: request.orderByDescending);

    final query = usedRequest.getPaginationQuery(preQuery: preQuery);
    final dataSnapshots = (await query.get()).docs;
    return FirestorePagedList.fromJson(
      snapshots: dataSnapshots,
      mapFunction: FirestoreUser.fromJson,
      requestPagination: request.pagination,
    );
  }

  @override
  Future<FirestorePagedList<FirestoreUser>> filterUsers({
    required FirestoreListRequest request,
    required FirestoreUserFilterRequest filters,
  }) async {
    final usedRequest = request.copyWith(collection: 'users');
    final collection = _db.collection('users');
    Query<Map<String, dynamic>> filterQuery =
        collection.orderBy(request.orderBy);

    // Second ordering
    if (request.orderBySecond?.isNotEmpty ?? false) {
      filterQuery = filterQuery.orderBy(request.orderBySecond ?? '');
    }

    // Use filters on query
    // age filtering
    if (filters.minAge != null) {
      filterQuery =
          filterQuery.where('age', isGreaterThanOrEqualTo: filters.minAge);
    }
    if (filters.maxAge != null) {
      filterQuery =
          filterQuery.where('age', isLessThanOrEqualTo: filters.maxAge);
    }

    // Name filtering
    if (filters.nameQuery?.isNotEmpty ?? false) {
      filterQuery = filterQuery.where(
        'fullNameLower',
        isGreaterThanOrEqualTo: filters.nameQuery,
      );
      filterQuery = filterQuery.where(
        'fullNameLower',
        isLessThan: '${filters.nameQuery}z',
      );
    }

    filterQuery = usedRequest.getPaginationQuery(preQuery: filterQuery);

    final dataSnapshots = (await filterQuery.get()).docs;
    return FirestorePagedList.fromJson(
      snapshots: dataSnapshots,
      mapFunction: FirestoreUser.fromJson,
      requestPagination: request.pagination,
    );
  }
}
