import 'package:chat_firestore/core/app/type_aliases.dart';
import 'package:chat_firestore/core/error/repository_request_handler.dart';
import 'package:chat_firestore/features/firebase/domain/datasources/i_firestore_datasource.dart';
import 'package:chat_firestore/features/firebase/domain/models/firestore_list_request.dart';
import 'package:chat_firestore/features/firebase/domain/models/firestore_paged_list.dart';
import 'package:chat_firestore/features/firebase/domain/models/firestore_user.dart';
import 'package:chat_firestore/features/firebase/domain/models/firestore_user_filter_request.dart';
import 'package:chat_firestore/features/firebase/domain/repositories/i_firestore_repository.dart';

class FirestoreRepository extends IFirestoreRepository {
  FirestoreRepository(this._datasource);

  final IFirestoreDatasource _datasource;

  @override
  FutureFailable<bool> addUser(FirestoreUser user) {
    return RepositoryRequestHandler<bool>()(
      request: () => _datasource.addUser(user),
    );
  }

  @override
  FutureFailable<FirestoreUser?> getUser(String userId) {
    return RepositoryRequestHandler<FirestoreUser?>()(
      request: () => _datasource.getUser(userId),
    );
  }

  @override
  FutureFailable<FirestorePagedList<FirestoreUser>> listUsers(
      FirestoreListRequest request) {
    return RepositoryRequestHandler<FirestorePagedList<FirestoreUser>>()(
      request: () => _datasource.listUsers(request),
    );
  }

  @override
  FutureFailable<FirestorePagedList<FirestoreUser>> filterUsers(
      {required FirestoreListRequest request,
      required FirestoreUserFilterRequest filters}) {
    return RepositoryRequestHandler<FirestorePagedList<FirestoreUser>>()(
      request: () => _datasource.filterUsers(
        filters: filters,
        request: request,
      ),
    );
  }
}
