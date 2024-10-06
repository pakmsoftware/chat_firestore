import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'firestore_pagination.freezed.dart';

/// Pagination model used for firestore
@freezed
class FirestorePagination with _$FirestorePagination {
  factory FirestorePagination({
    /// Used as 'limit' in firestore
    @Default(20) int pageSize,

    /// Currently returned page size
    @Default(0) int currentPageSize,

    /// Last snaphost of document used as 'startAfterDocument' in firestore query
    DocumentSnapshot<Object?>? lastDocument,
  }) = _FirestorePagination;
}
