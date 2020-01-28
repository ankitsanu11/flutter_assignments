import 'dart:io';
void main(List<String> arguments) {
  int value;
  value = int.parse(stdin.readLineSync());
  for(var i=1;i<=10;i++)
  {
    print(i*value);
  }

}
