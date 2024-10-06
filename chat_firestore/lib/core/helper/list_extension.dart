extension ListExtension<T> on List<T> {
  T? firstWhereOrNull(bool Function(T) predicate) {
    try {
      return firstWhere(predicate);
    } catch (e) {
      return null;
    }
  }
}
