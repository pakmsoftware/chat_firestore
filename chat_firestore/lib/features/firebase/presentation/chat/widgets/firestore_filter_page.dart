import 'package:chat_firestore/core/helper/context_extension.dart';
import 'package:chat_firestore/core/router/app_router.dart';
import 'package:chat_firestore/features/firebase/domain/models/firestore_chat_filter.dart';
import 'package:chat_firestore/features/firebase/presentation/chat/cubit/firestore_chat_filter_page_cubit.dart';
import 'package:chat_firestore/features/firebase/presentation/chat/widgets/firestore_age_filters.dart';
import 'package:chat_firestore/generated/l10n.dart';
import 'package:chat_firestore/core/di/injection_container.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Chat filtering page
@RoutePage()
class FirestoreFilterPage extends StatelessWidget {
  const FirestoreFilterPage({
    super.key,
    this.applyFiltersCallback,
    this.initialFilters,
  });

  /// Initial filters used in form
  final FirestoreChatFilter? initialFilters;

  /// Function to apply selected filters
  final Function(FirestoreChatFilter filters)? applyFiltersCallback;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<FirestoreChatFilterPageCubit>()
        ..init(
          initialFilters ?? FirestoreChatFilter.empty(),
        ),
      child: Builder(builder: (context) {
        return Scaffold(
          appBar: AppBar(
            title: Text(S.current.filter),
            surfaceTintColor: Colors.transparent,
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              children: [
                // Filters
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 16),
                        // Age filtering
                        Text(
                          S.current.age,
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        FirestoreAgeFilters(
                          initialMinAge: initialFilters?.minAge?.toString(),
                          initialMaxAge: initialFilters?.maxAge?.toString(),
                          onMinAgeChanged: (value) => context
                              .read<FirestoreChatFilterPageCubit>()
                              .setMinAge(int.tryParse(value)),
                          onMaxAgeChanged: (value) => context
                              .read<FirestoreChatFilterPageCubit>()
                              .setMaxAge(int.tryParse(value)),
                        ),
                      ],
                    ),
                  ),
                ),

                // Filtering button
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: SizedBox(
                    width: context.maxWidth,
                    child: ElevatedButton(
                      onPressed: () {
                        // Copy filters from filter page cubit so it can be read after page is popped
                        final filters = context
                            .read<FirestoreChatFilterPageCubit>()
                            .state
                            .filters
                            .copyWith();

                        // Pop page and filter page by filters
                        sl<AppRouter>().maybePop().then(
                              (_) => applyFiltersCallback?.call(filters),
                            );
                      },
                      child: Text(S.current.filter),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
