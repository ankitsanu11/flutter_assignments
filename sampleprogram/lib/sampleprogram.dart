import 'dart:io';

class Registrationform {
  String name;
  String phoneno;
  int age;
  String email;

  void getdetail() {
    print('enter your name');
    name = stdin.readLineSync();
    print('enter your phoneno');
    phoneno = stdin.readLineSync();
    print('enter your age');
    age = int.parse(stdin.readLineSync());
    print('enter your email');
    email = stdin.readLineSync();
  }

  void showdetial() {
    print(name);
    print(phoneno);
    print(age);
    print(email);
  }
}
