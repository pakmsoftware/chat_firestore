import 'package:chat_firestore/core/app/type_aliases.dart';
import 'package:chat_firestore/features/firebase/domain/models/firebase_storage_upload_request.dart';

/// Repo Interface for firebase storage for adding and downloading files
abstract class IFirebaseStorageRepository {
  /// Gets download link from collection storage file
  FutureFailable<String> getFileUrl(String collectionPath);

  /// Uploads file to storage
  FutureFailable<bool> uploadFile(FirebaseStorageUploadRequest request);
}
