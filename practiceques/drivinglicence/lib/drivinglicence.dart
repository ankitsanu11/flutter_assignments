import 'dart:io';
class Driving_licence{
  String name,address,dob;
  int phone_no;
  void get_detail(){
    print('enter your name');
    name = stdin.readLineSync();
    print('enter your address');
    address = stdin.readLineSync();
    print('enter your dob');
    dob = stdin.readLineSync();
    print('enter your phone_no');
    phone_no = int.parse(stdin.readLineSync());

    
  }
  void show_details()
{
  print('your name $name');
  print('your address $address');
  print('your dob $dob');
  print('your phone no $phone_no');
}
  }
