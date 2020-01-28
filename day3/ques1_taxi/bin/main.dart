import 'dart:io';
import 'package:ques1_taxi/ques1_taxi.dart';
void main(List<String> args) {
  double distance;
    print('Entert distance:');
    distance = double.parse(stdin.readLineSync());
    print(getTaxi(distance)?'Online':'Offline');
}