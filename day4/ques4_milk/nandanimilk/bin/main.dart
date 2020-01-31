import 'dart:io';
import 'package:nandanimilk/nandanimilk.dart';
void main(List<String> args) {
  

var obj_nandini=Nandini_milk();
        int milk_classes,order_milk,spoiled_milk;
        List<int> milk_packets=List();

        print('Enter the order given by customer');
        order_milk=int.parse(stdin.readLineSync());

        print('Enter the no of classes of milk');
        milk_classes=int.parse(stdin.readLineSync());

        print('Enter the count of each class');
        int count;
        for( count = 0; count < milk_classes; count++ )
        {
          print('Class $count');
          //milk_packets[count]=int.parse(stdin.readLineSync());
          milk_packets.add(int.parse(stdin.readLineSync()));
        }
        print('Enter the spoiled milk');
        spoiled_milk=int.parse(stdin.readLineSync());
        obj_nandini.milk(milk_classes,milk_packets,spoiled_milk,order_milk);
      
        }
        