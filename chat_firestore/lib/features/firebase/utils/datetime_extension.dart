/// Extension for datetime object
extension DateTimeExtension on DateTime {
  /// Determines if [pastDate] is more or equal minutes in the past than [minutes]
  bool isMoreThanMinutesDifference({
    required DateTime pastDate,
    required int minutes,
  }) {
    final diffDuration = this.difference(pastDate);
    return diffDuration.inMinutes >= minutes;
  }

  /// Determines if [pastDate] is the same day as this
  bool isTheSameDay({required DateTime pastDate}) {
    return this.year == pastDate.year &&
        this.month == pastDate.month &&
        this.day == pastDate.day;
  }
}
