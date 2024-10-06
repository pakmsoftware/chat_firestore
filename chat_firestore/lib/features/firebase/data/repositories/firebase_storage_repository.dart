import 'package:chat_firestore/core/app/type_aliases.dart';
import 'package:chat_firestore/core/error/repository_request_handler.dart';
import 'package:chat_firestore/features/firebase/domain/datasources/i_firebase_storage_datasource.dart';
import 'package:chat_firestore/features/firebase/domain/models/firebase_storage_upload_request.dart';
import 'package:chat_firestore/features/firebase/domain/repositories/i_firebase_storage_repository.dart';

class FirebaseStorageRepository extends IFirebaseStorageRepository {
  FirebaseStorageRepository(this._datasource);

  final IFirebaseStorageDatasource _datasource;

  @override
  FutureFailable<String> getFileUrl(String collectionPath) {
    return RepositoryRequestHandler<String>()(
      request: () => _datasource.getFileUrl(collectionPath),
    );
  }

  @override
  FutureFailable<bool> uploadFile(FirebaseStorageUploadRequest request) {
    return RepositoryRequestHandler<bool>()(
      request: () => _datasource.uploadFile(request),
    );
  }
}
