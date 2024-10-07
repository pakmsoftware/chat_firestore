import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// Custom converter to handle FieldValue.serverTimestamp()
class FirestoreTimestampConverter implements JsonConverter<Object?, Object?> {
  const FirestoreTimestampConverter();

  // During serialization, return FieldValue.serverTimestamp to be sent to Firestore
  @override
  Object? toJson(Object? object) {
    if (object == null) {
      return FieldValue.serverTimestamp();
    }
    return object; // If the value is already set (a timestamp), keep it as-is
  }

  // From JSON (deserialization), expect a Timestamp or null
  @override
  Object? fromJson(Object? json) {
    if (json is Timestamp) {
      return json;
    }
    return null; // Handle cases where it's not yet a timestamp (for example, during a Firestore write)
  }
}
