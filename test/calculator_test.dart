import 'package:calculator/calculator.dart';
import 'package:test/test.dart';

void main() {
  group('Calculator', () {
    test('inits with 0.0', () {
      final calculator = Calculator();
      expect(calculator.value, 0.0);
    });

    test('adds value', () {
      final calculator = Calculator();
      calculator.add(2);
      expect(calculator.value, 2.0);
    });

    test('subtracts value', () {
      final calculator = Calculator();
      calculator.substract(3);
      expect(calculator.value, -2.0);
    });

    test('isNot', () {
      final calculator = Calculator();
      expect(calculator.value, isNot(1.0));
    });

    test('throws on division by zero', () {
      final calculator = Calculator();
      expect(() => calculator.divide(0.0), throwsArgumentError);
    });
  });
}
