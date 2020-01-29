import 'dart:io';

void main(List<String> arguments) {
print('Enter the number');
int n = int.parse(stdin.readLineSync());
var nlist = List();
for(int i = 0;i<n;i++)
{
  nlist.add(int.parse(stdin.readLineSync()));
}
nlist.sort();
print(nlist);

}
  