class ExpressionSplit {
  late final String expression;

  ExpressionSplit(this.expression);

  final List<String> _numbers = [];
  final List<double> _doubleNumbers = [];
  final List<String> _signs = [];

  getExpressionSplit() {
    String tempNumber = '';
    String tempChar = '-';

    for (int i = 0; i <= expression.length - 1; i++) {
      if (double.tryParse(expression[i]) != null ||
          tempChar == "-" ||
          expression[i] == '.') {
        tempNumber = tempNumber + expression[i];
        tempChar = '+';
        if (expression.length - 1 == i) {
          _numbers.add(tempNumber);
        }
      } else {
        tempChar = '-';
        if (tempNumber == '-') {}
        _numbers.add(tempNumber);
        _signs.add(expression[i]);
        tempNumber = '';
      }
    }
  }

  getNumbers() {
    print(_numbers);
    for (var num in _numbers) {
      _doubleNumbers.add(double.parse(num));
    }
    return _doubleNumbers;
  }

  getSigns() {
    return _signs;
  }
}
