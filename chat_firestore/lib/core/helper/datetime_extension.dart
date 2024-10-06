extension DateTimeExtension on DateTime {
  /// Compares day, month and year to other date
  bool isTheSameDay(DateTime otherDate) {
    return day == otherDate.day &&
        month == otherDate.month &&
        year == otherDate.year;
  }
}
