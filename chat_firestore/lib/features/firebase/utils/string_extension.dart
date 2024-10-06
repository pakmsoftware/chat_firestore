extension StringExtension on String {
  String get fileExtension {
    final dotIndex = lastIndexOf('.');
    if (dotIndex >= 0) {
      return substring(dotIndex);
    }

    return this;
  }
}
