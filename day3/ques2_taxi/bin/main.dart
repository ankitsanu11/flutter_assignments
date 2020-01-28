import 'dart:io';
void main(List<String> args) {
  var chocolateList = [];
  bool buyOrNot(int chocolates){
  return chocolates % 31 == 0;
}

    print('Enter no. of chocolates in P1: ');
    int temp; // temporary variable to store No. of chocolates in a packet
    temp = int.parse(stdin.readLineSync());
    chocolateList.add(temp);
    var test = 'N';
    print('Have more packets (Y/N)');
    test = stdin.readLineSync();
    while(test == 'Y' || test == 'y'){
      print('Enter no. of chocolates in P');
      temp = int.parse(stdin.readLineSync());
      chocolateList.add(temp);
      print('Have more packets (Y/N)');
      test = stdin.readLineSync();
    }
    for(var i = 0; i < chocolateList.length; i++){
      print('P${i+1}: ${buyOrNot(chocolateList[i])?'YES':'NO'}');
    }


}