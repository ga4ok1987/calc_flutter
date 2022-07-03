import 'package:flutter/foundation.dart';

class Math extends ChangeNotifier {
  late String result;
  RegExp regex = RegExp(r'([.]*0)(?!.*\d)');

  multiply(double num1, double num2) {
    return num1 * num2;
  }

  divide(double num1, double num2) {
    return num1 / num2;
  }

  sum(List<double> numbers, List<String> signs) {

    if (numbers.isEmpty) {
      notifyListeners();
      return 0;
    }

    for (int i = 0; i < signs.length; i++) {
      if (signs[i] == '+') {
        numbers[i + 1] = numbers[i] + numbers[i + 1];
      } else {
        numbers[i + 1] = numbers[i] - numbers[i + 1];
      }
    }

    return numbers[numbers.length - 1].toString().replaceAll(regex, '');
  }
}
