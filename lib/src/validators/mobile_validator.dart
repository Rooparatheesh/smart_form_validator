class MobileValidator {
  static String? validate(String? value, {int length = 10}) {
    if (value == null || value.isEmpty) {
      return "Mobile number is required";
    }

    if (value.length != length) {
      return "Mobile number must be $length digits";
    }

    return null;
  }
}
