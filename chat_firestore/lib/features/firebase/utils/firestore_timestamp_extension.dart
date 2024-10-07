import 'package:cloud_firestore/cloud_firestore.dart';

/// Extenstion for objects that can be timestamps
extension FirestoreTimestampExtension on Object {
  /// Converts timestamp objects to DateTime
  DateTime? toDateTime() {
    // Convert only if object is timestamp
    if (this is Timestamp) {
      return (this as Timestamp).toDate();
    }

    return null;
  }
}
