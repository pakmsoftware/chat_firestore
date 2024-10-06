import 'package:chat_firestore/features/firebase/domain/models/firebase_storage_upload_request.dart';

/// Interface for firebase storage for adding and downloading files
abstract class IFirebaseStorageDatasource {
  /// Gets download link from collection storage file
  Future<String> getFileUrl(String collectionPath);

  /// Uploads file to storage
  Future<bool> uploadFile(FirebaseStorageUploadRequest request);
}
