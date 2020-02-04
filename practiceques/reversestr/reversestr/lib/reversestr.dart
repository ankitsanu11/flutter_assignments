import 'dart:io';

class Reversestr{
  String name;
  void get_details(){
    print('enter the string');
    name=stdin.readLineSync();
    print((name.split('').reversed).join(''));
  }
}