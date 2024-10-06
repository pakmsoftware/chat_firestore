import 'package:chat_firestore/core/helper/reg_exp_preset.dart';
import 'package:chat_firestore/generated/l10n.dart';

abstract class EmailValidator {
  static bool validate(String? value) {
    if (value == null || value.isEmpty) {
      return false;
    }
    if (!RegExp(RegExpPreset.email).hasMatch(value)) {
      return false;
    }
    return true;
  }

  static String? validateWithMessage(String? value) {
    if (value == null || value.isEmpty) {
      return S.current.thisFieldIsNecessary;
    }
    if (!RegExp(RegExpPreset.email).hasMatch(value)) {
      return S.current.invalidEmail;
    }
    return null;
  }
}

abstract class PasswordValidator {
  static bool _validate(String? value) {
    if (value == null || value.isEmpty) {
      return false;
    }
    return true;
  }

  // EL-1732: Validation on login only validates if password is empty or null
  static String? validateOnLogin(String? value) {
    if (!_validate(value)) {
      return S.current.thisFieldIsNecessary;
    }
    return null;
  }

  static String? validateWithMessage(String? value) {
    if (!_validate(value)) {
      return S.current.thisFieldIsNecessary;
    }
    if (!RegExp(RegExpPreset.password).hasMatch(value!)) {
      return S.current.authWrongPassword;
    }
    return null;
  }
}
