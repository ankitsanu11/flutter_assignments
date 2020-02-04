import 'dart:io';
class Rainbow{
  String rainbow_color;
   var rainbow_details = ['red','blue','geen','white','orange','indigo','violet'];
  

  void get_details(){
    print(rainbow_details);
    print('enter the rainbow color');

    rainbow_color = stdin.readLineSync();
    for(int i = 0;i<rainbow_details.length;i++){
      if(rainbow_color==rainbow_details[i])
      {
        print('user input:$rainbow_color');
      }
    }
    
  }


}

