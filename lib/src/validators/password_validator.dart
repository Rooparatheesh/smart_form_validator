class PasswordValidator {
  static String? validate(String? value, {int minLength = 6}) {
    if (value == null || value.isEmpty) {
      return "Password is required";
    }

    if (value.length < minLength) {
      return "Password must be at least $minLength characters";
    }

    return null;
  }
}
