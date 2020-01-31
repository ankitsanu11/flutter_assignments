import 'university_info.dart';

class Branch extends University{
  int y;
  String branch;
  Branch(int y,String branch){
    this.y = y;
    this.branch = branch;
  }
  void print_h(details){
    print('enter the total number of branch');
    print('enter the total list of branch');
  }
}