import 'dart:io';

import 'package:drivinglicence/drivinglicence.dart' as drivinglicence;

import '../lib/drivinglicence.dart';

void main(List<String> arguments) {
  Driving_licence d = Driving_licence();

  int age;
  print('enter your age');
  age = int.parse(stdin.readLineSync());
  if(age>=18){
    print('you are eligible');
    d.get_detail();
  d.show_details();
  }else{
    print('your not eligible');
  

  

}
}