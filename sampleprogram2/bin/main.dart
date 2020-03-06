import 'package:sampleprogram2/sampleprogram2.dart' as sampleprogram2;

import '../lib/sampleprogram2.dart';

void main(List<String> arguments) {
  Bankdetails obj1 = Bankdetails();
  obj1.getdetails();

  Bankdetails obj2 = Bankdetails();
  obj2.getdetails();

  Bankdetails obj3 = Bankdetails();
  obj3.getdetails();
  obj1.showdetails();
  obj2.showdetails();
  obj3.showdetails();
}
