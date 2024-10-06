import 'package:chat_firestore/generated/l10n.dart';
import 'package:flutter/material.dart';

/// Filtering for min and max age for users/chats
class FirestoreAgeFilters extends StatelessWidget {
  const FirestoreAgeFilters({
    required this.onMinAgeChanged,
    required this.onMaxAgeChanged,
    this.initialMinAge,
    this.initialMaxAge,
    super.key,
  });

  /// On minimal age changed callback
  final Function(String value) onMinAgeChanged;

  /// On maximal age changed callback
  final Function(String value) onMaxAgeChanged;

  /// Initial value of min age
  final String? initialMinAge;

  /// Initial value of max age
  final String? initialMaxAge;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Min age input
        Expanded(
          child: TextFormField(
            initialValue: initialMinAge,
            onChanged: onMinAgeChanged,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              label: Text(S.current.from),
            ),
          ),
        ),

        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Text('-'),
        ),

        // Max age input
        Expanded(
          child: TextFormField(
            initialValue: initialMaxAge,
            onChanged: onMaxAgeChanged,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              label: Text(S.current.to),
            ),
          ),
        ),
      ],
    );
  }
}
