class Product {
  String name = 'Washing machine';
  int price = 35000;
  int actualPice;
  int offer = 10;
  void discount() {
    print('Enter your product name');
    print('$name');
    print('Enter your product price');
    print('$price');
    print('Enter your product offer');
    print('$offer%');
    print('Enter product actual price');
    actualPice = price - (price * 10 ~/ 100);
    print('$actualPice');
  }
}
