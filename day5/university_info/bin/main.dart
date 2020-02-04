import 'package:university_info/university_info.dart' as university_info;

import '../lib/university_info.dart';

void main(List<String> arguments) {
  University obj = University();
  obj.print_details();

  Branch obj1 = Branch();
  obj1.print_h();

  Course obj2 = Course();
  obj2.print_u();
}

