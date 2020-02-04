import 'dart:io';
import 'dart:math';

class quiz{
  int r;
  void generate(country,capital){
    Random random = Random();
    r = random.nextInt(9);
    print('');
    print('');
    print('Enter the capital of country[r]');
    String capi = stdin.readLineSync();
    if(capi.toUpperCase()==capital[r]){
      print('Correct Answer');
    }
    else{
      print('Wrong Answer');
    }

  }
}