import 'dart:async';
import 'dart:io';

class Bankdetails {
  String bank;
  String location;
  int loanAmount;
  void getdetails() {
    print('bank details');
    bank = stdin.readLineSync();
    print('Enter your location');
    location = stdin.readLineSync();
    print('Enter your Loan Amount');
    loanAmount = int.parse(stdin.readLineSync());
  }

  void showdetails() {
    print(bank);
    print(location);
    print(loanAmount);
  }
}
