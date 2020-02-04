import 'dart:io';


class Booking{
  String name,email;
  int phone_no;
  void get_detials()
  {
    print('enter your name');
    name = stdin.readLineSync();
    print('enter your no.');
    phone_no = int.parse(stdin.readLineSync());
    print('enter your emailid');
    email = stdin.readLineSync();

  }
  void show_detials()
  {
    print('your name is $name');
    print('your no. is $phone_no');
    print('your email is $email');
  }
  void book()
  {
    print('Welcoem to online booking ');
    print('1. airline\n2. bus\n3.train\n');
    int n =int.parse(stdin.readLineSync());
    switch(n)
    {
      case 1: Airline a = Airline();
      a.airline_booking();
      break;
      case 2:Bus b = Bus();
      b.bus_booking();
      break;
      case 3:Train t = Train();
      t.train_booking();
      break;
      default:print('invalid detail');
    }
    
  }

}
class Customer extends Booking{
  String city,street,state,country;
  int pin_code;
  void get_details()
  {
      print('enter your city');
      city = stdin.readLineSync();
      print('enter your street');
      street = stdin.readLineSync();
      print('enter your state');
      state = stdin.readLineSync();
      print('enter your country');
      country = stdin.readLineSync();
      print('enter your pin_code');
      pin_code = int.parse(stdin.readLineSync());
  }
  void display_details()
  {
      print('your city is $city');
      print('your street is $street');
      print('your state is $state');
      print('your country is $country');
      print('your pin_code is $pin_code');
  }
}
class Airline extends Booking{
  void airline_booking(){
    print('welcome to airline services');
    print('enter your details');
    get_detials();
    Customer c = Customer();
    c.get_details();
    print('booking Succesfull,your details are');
    show_detials();
    c.display_details();

  }



}
class Bus extends Booking{
   void bus_booking(){
    print('welcome to bus services');
    print('enter your details');
    get_detials();
    Customer c = Customer();
    c.get_details();
    print('booking Succesfull,your details are');
    show_detials();
    c.display_details();

  }

}
class Train extends Booking{

   void train_booking(){
    print('welcome to train services');
    print('enter your details');
    get_detials();
    Customer c = Customer();
    c.get_details();
    print('booking Succesfull,your details are');
    show_detials();
    c.display_details();

  }
}
