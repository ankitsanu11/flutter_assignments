import 'dart:io';
class Primenumber{
  int c=0,n=0;
  void get_details()
  {
      
      for(int i=2;i<=100;i++)
      {
        for(int j=2;j<=i/2;j++)
        {
          if(i%j==0)
          {
            c++;
          }
        }
        if(c==0)
        {
          print(i);
          n++;
        }
        c=0;
      }
      print('total prime no. between 1 to 100 is: $n');
  }
  
}