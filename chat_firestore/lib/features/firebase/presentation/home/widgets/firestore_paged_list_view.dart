import 'package:chat_firestore/features/firebase/domain/models/firestore_paged_list.dart';
import 'package:flutter/material.dart';

/// Generic paged list view widget for firestore paged lists
class FirestorePagedListView<T> extends StatefulWidget {
  const FirestorePagedListView({
    required this.list,
    required this.listItemBuilder,
    required this.fetchMoreCallback,
    required this.separator,
    required this.fetchMoreThreshold,
    required this.pullToRefreshCallback,
    this.isReversed = false,
    super.key,
  });

  /// Paged generic list
  final FirestorePagedList<T> list;

  /// Single list item widget builder
  final Widget Function(T listElement, int index) listItemBuilder;

  /// Separator widget
  final Widget separator;

  /// Paginate function
  final VoidCallback fetchMoreCallback;

  /// Refresh indicator callback -> in most cases should be to refresh data so call for first page of data
  final Future<void> Function() pullToRefreshCallback;

  /// Number of dp before end of scrolled list when [fetchMoreCallback] is executed
  final double fetchMoreThreshold;

  /// Is list reversed
  final bool isReversed;

  @override
  State<FirestorePagedListView<T>> createState() =>
      _FirestorePagedListViewState<T>();
}

class _FirestorePagedListViewState<T> extends State<FirestorePagedListView<T>> {
  late final ScrollController _scrollController;

  void _initScrollController() {
    _scrollController = ScrollController()
      ..addListener(() {
        final maxExtent = _scrollController.position.maxScrollExtent;
        final threshold = maxExtent - widget.fetchMoreThreshold;
        final currentOffset = _scrollController.offset;
        if (currentOffset > threshold && widget.list.hasNextPage) {
          widget.fetchMoreCallback();
        }
      });
  }

  @override
  void initState() {
    _initScrollController();
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: widget.pullToRefreshCallback,
      child: ListView.separated(
        reverse: widget.isReversed,
        controller: _scrollController,
        itemBuilder: (context, index) => widget.list.hasNextPage
            ? Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  widget.listItemBuilder(widget.list.data[index], index),
                  // When there are more elements show progress indicator below the last list element
                  if (index == widget.list.data.length - 1)
                    const SizedBox(
                      width: 24,
                      height: 24,
                      child:
                          Center(child: CircularProgressIndicator.adaptive()),
                    ),
                ],
              )
            : widget.listItemBuilder(widget.list.data[index], index),
        separatorBuilder: (context, index) => widget.separator,
        itemCount: widget.list.data.length,
      ),
    );
  }
}
