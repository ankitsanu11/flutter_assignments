import 'dart:io';
int getMaxFirst(int input) {
 var output = 0;
 int t;
 var arr = List();
 while(input > 0) {
   t = input % 10;
   arr.add(t);
   input = input ~/ 10;

 }
 arr.sort();
 var len = arr.length;
 for(var i = len-1; i >= 0; i--) {
   output = output*10+arr[i];
 }
 return output;
}

void main(List<String> args){
  print(getMaxFirst(327847832648));
}