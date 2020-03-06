import 'dart:io';

abstract class Bank {
  void getdata();
}

class SBI extends Bank {
  @override
  void getdata() {
    print('SBI BANK');
  }
}

class ICICI extends Bank {
  @override
  void getdata() {
    print('ICICI BANK');
  }
}
