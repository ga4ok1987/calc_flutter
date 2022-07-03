import 'package:flutter/foundation.dart';
import 'package:calc_memo/models/expression_split.dart';
import 'package:calc_memo/models/math_operations.dart';
import 'is_sign.dart';

class MathData extends ChangeNotifier {
  late String _expression = '';
  bool isWholeNumber = false;
  String _number = '';
  String _lastNumber = 'not working';

  void addNumber(String pressedNumber) {
    RegExp regExpCorrectNumber = RegExp(
      r'^(?!\.|-\.)(?!--)-?(?!00)(?!-00)(?!-[0-9]+\.\.)(?![0-9]+\.\.)(?!-[0-9]+\.[0-9]+\.)(?![0-9]+\.[0-9]+\.)\d*\.?\d*',
      unicode: true,
    );

    if (_number.isEmpty && pressedNumber == '.') {
      _number += '0.';
      _expression += _number;
    }

    if (regExpCorrectNumber.hasMatch(_number + pressedNumber)) {
      _number += pressedNumber;
      _expression += pressedNumber;
    }

    isWholeNumber = false;
    notifyListeners();
  }

  void addSign(String pressedSign) {
    if (_expression.isEmpty) {
      _expression = '0$pressedSign';
    } else {
      _expression += pressedSign;
    }
    if (isWholeNumber == true) {
      _expression = _expression.substring(0, _expression.length - 2);
      _expression += pressedSign;
    }
    isWholeNumber = true;
    _number = '';
    notifyListeners();
  }

  negativeNumber() {
    int count = 0;
    for (int i = _expression.length - 1; i >= 0; i--) {
      if (IsSign().isSign(_expression[i]) == true) {
        if (IsSign().isSign(_expression[i - 1]) == true) {
          count++;
          break;
        }
        break;
      }
      count++;
    }

    _lastNumber = _expression.substring(_expression.length - count);
    _expression = _expression.substring(0, _expression.length - count);

    if (_lastNumber[0] == '-') {
      //_expression = _expression.substring(0, _expression.length-1);
      _expression += _lastNumber.substring(1);
    } else {
      _expression += '-$_lastNumber';
    }
    print(_lastNumber);
    print(_expression);
    notifyListeners();
  }

  getExpression() {
    return _expression;
  }

  clearExpression() {
    _expression = '';
    notifyListeners();
  }

  removeLast() {
    _expression = _expression.substring(0, _expression.length - 1);
    notifyListeners();
  }

  getResult() {
    ExpressionSplit expressionSplit = ExpressionSplit(_expression);
    expressionSplit.getExpressionSplit();

    MathOperations mathOperations = MathOperations(
        expressionSplit.getNumbers(), expressionSplit.getSigns());

    return mathOperations.getResult();
  }
}
