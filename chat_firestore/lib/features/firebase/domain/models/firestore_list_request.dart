import 'package:chat_firestore/features/firebase/domain/models/firestore_pagination.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'firestore_list_request.freezed.dart';

/// General request for lists collections in firestore
@freezed
class FirestoreListRequest with _$FirestoreListRequest {
  factory FirestoreListRequest({
    /// Order by sort name of parameter
    required String orderBy,

    /// Pagination information
    required FirestorePagination pagination,

    /// By default order by is ascending. Set it to true to have descending sort
    @Default(false) bool orderByDescending,

    /// Name of collection. Is overwritten in datasource layer
    @Default('') String collection,

    /// Collection reference
    CollectionReference<Map<String, dynamic>>? collectionRef,

    /// Second ordering parameter
    String? orderBySecond,
  }) = _FirestoreListRequest;

  FirestoreListRequest._();

  /// Gets query for Firestore request
  Query<Map<String, dynamic>> getPaginationQuery({
    required Query<Map<String, dynamic>> preQuery,
    bool useLastDocument = true,
    bool useLimit = true,
  }) {
    // extra pagination query -> last document snapshot
    if (useLastDocument && this.pagination.lastDocument != null) {
      preQuery = preQuery.startAfterDocument(this.pagination.lastDocument!);
    }

    // page size
    if (useLimit) {
      preQuery = preQuery.limit(this.pagination.pageSize);
    }
    return preQuery;
  }
}
