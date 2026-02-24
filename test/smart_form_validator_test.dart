import 'package:flutter_test/flutter_test.dart';
import 'package:smart_form_validator/smart_form_validator.dart';

void main() {
  group('RequiredValidator Tests', () {
    test('should return error when value is empty', () {
      final result = RequiredValidator().validate('');
      expect(result, 'This field is required');
    });

    test('should return null when value is valid', () {
      final result = RequiredValidator().validate('Roopa');
      expect(result, null);
    });
  });
}
