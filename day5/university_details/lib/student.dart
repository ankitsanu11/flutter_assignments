import 'university_details.dart';

class Student_details extends University
{
  int i;
  String university_name;

  Student_details(int i,String university_name){
    this.i = i;
    this.university_name = university_name;
   print( super.name);
  }
  void print_h(){
    print('enter university name: $university_name');
    print('enter the total number of student is ');
    //print('enter university name:');

  }
  
  }

