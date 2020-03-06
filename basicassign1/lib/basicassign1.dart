import 'dart:io';

class Calculator {
  var a, b;
  int n;
  var result;
  void getdata() {
    print('Enter the first number');
    a = int.parse(stdin.readLineSync());
    print('Enter the second number');
    b = int.parse(stdin.readLineSync());

    print(
        '1. For addition\n2. For subtract\n 3.For Multiplication\n4.For Division');
    n = int.parse(stdin.readLineSync());

    switch (n) {
      case 1:
        result = a + b;
        print('$result');
        break;
      case 2:
        result = a - b;
        print('$result');

        break;
      case 3:
        result = a * b;
        print('$result');

        break;
      case 4:
        result = a / b;
        print('$result');

        break;
      default:
        print('wrong Option');
    }
  }
}
