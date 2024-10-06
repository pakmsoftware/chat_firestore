import 'dart:io';

/// Upload request model to upload [file] to storage with provided reference path
class FirebaseStorageUploadRequest {
  FirebaseStorageUploadRequest({required this.file, required this.refPath});

  /// Uploaded file
  final File file;

  /// File path
  final String refPath;
}
