import 'dart:io';
import 'dart:math';
void main(List<String> arguments) {
  print('Enter the number of queues');
  int n = int.parse(stdin.readLineSync());
  print('Enter the length of each queue');
  var length = List();
  for(int i=0;i<n;i++)
  {
    length.add(int.parse(stdin.readLineSync()));

  }
  var length1 = length.map((element) => element).toList();
  length1.sort();
  int min = length.indexOf(length1[0]);
  print('Enter the ${min +1} queues');



}