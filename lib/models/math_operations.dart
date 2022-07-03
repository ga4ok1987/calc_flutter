import 'package:flutter/foundation.dart';

import 'math.dart';

class MathOperations extends ChangeNotifier {
  List<double> numbers;
  List<String> signs;

  MathOperations(this.numbers, this.signs);

  List<double> result = [];
  List<String> resultMath = [];

  getResult() {
    if (numbers.length == signs.length && signs.isNotEmpty) {
      signs.removeLast();
    }
    for (int i = 0; i < signs.length; i++) {
      if (signs[i] == '*') {
        numbers[i + 1] = Math().multiply(numbers[i], numbers[i + 1]);
      }
      if (signs[i] == '/') {
        numbers[i + 1] = Math().divide(numbers[i], numbers[i + 1]);
      }
      if (signs[i] == '+' || signs[i] == '-') {
        result.add(numbers[i]);
        resultMath.add(signs[i]);
      }
    }

    if (numbers.isNotEmpty && signs.isEmpty) {
      result.add(numbers[0]);
    }
    if (signs.length < numbers.length) {
      result.add(numbers[numbers.length - 1]);
    }

    return Math().sum(result, resultMath);
  }
}
