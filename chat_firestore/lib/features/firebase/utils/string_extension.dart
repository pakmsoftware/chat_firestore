extension StringExtension on String {
  String get fileExtension {
    final dotIndex = this.lastIndexOf('.');
    if (dotIndex >= 0) {
      return this.substring(dotIndex);
    }

    return this;
  }
}
