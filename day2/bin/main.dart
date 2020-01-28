import 'package:testapp/registrationform.dart';
import 'dart:io';
void main(List<String> arguments) {
  String name,email;
  name = stdin.readLineSync().toString();
  email = stdin.readLineSync().toString();
  int age;
 age = int.parse(stdin.readLineSync());
 String phoneno;
 phoneno = stdin.readLineSync().toString();
 var newuser = Registrationform(name,email,age,phoneno);
 newuser.getRegistrationDetails();

}
