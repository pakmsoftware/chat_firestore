import 'package:chat_firestore/generated/l10n.dart';

/// Helper validator for firebase forms
abstract class FirebaseFormValidator {
  /// [value] cannot be null or empty
  static String? validateNotEmpty(String? value) {
    if (value == null || value.isEmpty) {
      return S.current.fieldCannotBeEmpty;
    }
    return null;
  }

  /// [value] must be an integer if not null
  static String? validateIsIntNumber(String? value) {
    if (value == null) {
      return null;
    }
    final intValue = int.tryParse(value);
    if (intValue == null) {
      return '';
    }
    return null;
  }
}
