import 'dart:io';

class University{
  int i;
  String university_name;
  
  void print_details(){
    print('Enter the total number of university');
    i=int.parse(stdin.readLineSync());

    print('Enter the total list of universityname');
    university_name = stdin.readLineSync();
    
  }
}