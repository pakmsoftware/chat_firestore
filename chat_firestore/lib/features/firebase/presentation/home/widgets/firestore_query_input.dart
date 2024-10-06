import 'package:flutter/material.dart';

/// Text input for search query for firestore collections
class FirestoreQueryInput extends StatelessWidget {
  const FirestoreQueryInput({
    required this.onQueryChanged,
    super.key,
  });

  /// Callback when query is changed on input type
  final Function(String value) onQueryChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        isCollapsed: true,
        contentPadding: const EdgeInsets.all(12),
        prefixIcon: const Icon(Icons.search),
      ),
      keyboardType: TextInputType.text,
      onChanged: onQueryChanged,
    );
  }
}
