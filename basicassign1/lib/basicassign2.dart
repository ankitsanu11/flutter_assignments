import 'dart:io';

class Table {
  int n, result;

  void getdata() {
    print('table ');
    n = int.parse(stdin.readLineSync());
    for (int i = 1; i <= 10; i++) {
      result = n * i;
      print('$result');
    }
  }
}
