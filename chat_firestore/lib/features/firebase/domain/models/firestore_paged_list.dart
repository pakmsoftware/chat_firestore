import 'package:chat_firestore/features/firebase/domain/models/firestore_pagination.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

/// Paged list for firestore objects
class FirestorePagedList<T> {
  FirestorePagedList({required this.data, required this.pagination});

  /// Empty list constructor
  factory FirestorePagedList.empty() {
    return FirestorePagedList(
      data: [],
      pagination: FirestorePagination(),
    );
  }

  /// Mapping from firestore snapshot
  factory FirestorePagedList.fromJson({
    required List<QueryDocumentSnapshot<Map<String, dynamic>>> snapshots,
    required T Function(Map<String, dynamic> json) mapFunction,
    required FirestorePagination requestPagination,
  }) {
    final json = snapshots.map((e) => e.data()).toList();
    final mappedList = json.map((e) => mapFunction(e)).toList();
    return FirestorePagedList(
      data: mappedList,
      pagination: requestPagination.copyWith(
        lastDocument: snapshots.isNotEmpty ? snapshots.last : null,
        currentPageSize: snapshots.length,
      ),
    );
  }

  /// Copy object
  FirestorePagedList<T> copyWith(
      {List<T>? data, FirestorePagination? pagination}) {
    return FirestorePagedList(
      data: data ?? this.data,
      pagination: pagination ?? this.pagination,
    );
  }

  /// Page data
  final List<T> data;

  /// Pagination information
  final FirestorePagination pagination;

  /// Determines if paged list has more pages to fetch to get all data
  bool get hasNextPage {
    return pagination.currentPageSize >= pagination.pageSize;
  }

  /// Merges new page data with previous page [oldData]
  FirestorePagedList<T> mergeData({
    required FirestorePagedList<T> oldData,
    bool useFirstPage = false,
  }) {
    return FirestorePagedList(
      data: useFirstPage
          ? data
          : [
              ...oldData.data,
              ...data,
            ],
      pagination: pagination,
    );
  }
}
