class DateValidator {
  static String? validateRange(DateTime? start, DateTime? end) {
    if (start == null || end == null) {
      return "Both dates are required";
    }

    if (end.isBefore(start)) {
      return "End date cannot be before start date";
    }

    return null;
  }
}
