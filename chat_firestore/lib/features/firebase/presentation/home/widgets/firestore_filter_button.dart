import 'package:chat_firestore/generated/l10n.dart';
import 'package:flutter/material.dart';

/// Button that opens dialog with possible filtering
class FirestoreFilterButton extends StatelessWidget {
  const FirestoreFilterButton({
    required this.onTap,
    required this.areFiltersUsed,
    super.key,
  });

  /// On tap callback
  final VoidCallback onTap;

  /// Determines if filters are used
  final bool areFiltersUsed;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topEnd,
      children: [
        ElevatedButton(
          onPressed: onTap,
          child: Text(S.current.filter),
        ),
        if (areFiltersUsed)
          Container(
            width: 16,
            height: 16,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.red,
            ),
          ),
      ],
    );
  }
}
