import 'package:chat_firestore/features/firebase/domain/datasources/i_firebase_storage_datasource.dart';
import 'package:chat_firestore/features/firebase/domain/models/firebase_storage_upload_request.dart';
import 'package:firebase_storage/firebase_storage.dart';

class FirebaseStorageDatasource extends IFirebaseStorageDatasource {
  FirebaseStorage get _storage => FirebaseStorage.instance;

  @override
  Future<String> getFileUrl(String collectionPath) async {
    final ref = _storage.ref(collectionPath);
    return ref.getDownloadURL();
  }

  @override
  Future<bool> uploadFile(FirebaseStorageUploadRequest request) async {
    final ref = _storage.ref(request.refPath);
    final result = await ref.putFile(request.file);
    return result.state == TaskState.success;
  }
}
