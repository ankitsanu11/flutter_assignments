import 'dart:io';

void main(List<String> arguments) {
  print('Enter the number of product');
  int n = int.parse(stdin.readLineSync());
  print('Price of each product');
  int total_bill = 0;
  var price = List();

for(int i = 0;i<n;i++)
{
  price.add(int.parse(stdin.readLineSync()));
  total_bill += price[i];
}
print('Enter the country name');
String country = stdin.readLineSync();
if(country =='india')
{
  print(total_bill);
}  
else{
  print('Enter the currency');
  double currency = double.parse(stdin.readLineSync());
  total_bill = total_bill~/currency;
}




}
