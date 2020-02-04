import 'dart:io';

 class University{
   int i;
   String university_name;
  
   void print_details(){
     print('Enter the total number of university');
     i=int.parse(stdin.readLineSync());

     print('Enter the total list of universityname');
    // university_name = stdin.readLineSync();
    var list_University = ['IIM','VTU','MANIPAL','SRM'];
    print(list_University);
   }
 
 
 }
 class Course extends University{
   int x;
   String course;
 

 void print_u(){
 print('enter the total number of class');
 x = int.parse(stdin.readLineSync());
 print('enter the total list of courses');
 course = stdin.readLineSync();
 var list_Course = {'Arts,medical,engineer,commerce'};
 print(list_Course);
 }
 }

 class Branch extends University{
   int y;
   String branch;
  
    
   
   void print_h(){
     print('enter the total number of branch');
     var y = int.parse(stdin.readLineSync());
     print('enter the total list of branch');
     var branch = stdin.readLineSync();
     var list_Branch = {'Bangalore,Delhi,kolkata,pune'};
     print(list_Branch);
  }
 }

 
 
