import 'dart:developer';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/material.dart';

class Foodgrains extends StatefulWidget {
  @override
  _FoodgrainsState createState() => _FoodgrainsState();
}

class _FoodgrainsState extends State<Foodgrains> {
  List<int> count = [0, 0, 0, 0, 0, 0, 0];

  List<Map<String, dynamic>> dataItems;
  String image;
  String productName;
  String productPrice;
  @override
  void initState() {
    super.initState();
    dataItems = [
      {
        'image': 'assets/images/rice.jpg',
        'productName': 'Rice (5kg)',
        'price': '500',
        'item_count': 0
      },
      {
        'image': 'assets/images/pulse.jpg',
        'productName': 'Toor Dal (500grm)',
        'price': '80',
        'item_count': 0
      },
      {
        'image': 'assets/images/rava.jpg',
        'productName': 'Rava (500grm)',
        'price': '60',
        'item_count': 0
      },
      {
        'image': 'assets/images/oil.jpg',
        'productName': 'Mustard Oil (1Ltr)',
        'price': '140',
        'item_count': 0
      },
      {
        'image': 'assets/images/garammasala.jpg',
        'productName': 'Garam Masala (250grm)',
        'price': '100',
        'item_count': 0
      },
      {
        'image': 'assets/images/aata.png',
        'productName': 'Aata (5kg)',
        'price': '400',
        'item_count': 0
      },
    ];
    int index = 3;

    image = 'image';
    productName = 'productName';
    productPrice = 'price';
    debugPrint(
        'Data - image : ${dataItems.elementAt(index)[image]} ,productName : ${dataItems.elementAt(index)[productName]} ,productPrice : ${dataItems.elementAt(index)[productPrice]} ');
  }

  void incrementCounter(int index) {
    setState(() {
      count[index]++;
    });
  }

  void decrementCounter(int index) {
    setState(() {
      if (count[index] > 0) count[index]--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.green,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.black,
            ),
            title: Text(
              'Home',
              style: TextStyle(color: Colors.black),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.black,
            ),
            title: Text(
              'Cart',
              style: TextStyle(color: Colors.black),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.payment, color: Colors.black),
            title: Text(
              'Checkout',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
      appBar: AppBar(
        title: Text("Food grains & OIl Masala"),
        backgroundColor: Colors.green,
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 5.0, mainAxisSpacing: 30),
        scrollDirection: Axis.vertical,
        itemCount: dataItems.length,
        itemBuilder: (BuildContext context, index) {
          return Container(
            child: Card(
              child: GestureDetector(
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Image.asset(
                        dataItems.elementAt(index)[image],
                        height: 100,
                      ),
                      Text(
                        dataItems.elementAt(index)[productName],
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Rs. ${dataItems.elementAt(index)[productPrice]}',
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold),
                      ),
                      Container(
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                IconButton(
                                  icon: Icon(Icons.remove),
                                  onPressed: () {
                                    //decrementCounter(0);
                                    setState(() {
                                      dataItems
                                          .elementAt(index)['item_count']--;
                                    });
                                  },
                                ),
                                Row(
                                  children: <Widget>[
                                    Text(dataItems
                                        .elementAt(index)['item_count']
                                        .toString()),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    IconButton(
                                      icon: Icon(Icons.add),
                                      onPressed: () {
                                        //incrementCounter(0);

                                        setState(() {
                                          dataItems
                                              .elementAt(index)['item_count']++;
                                        });
                                      },
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  // implement logic
                },
              ),
            ),
          );
        },
      ),
    );
  }
}

class DataProvider extends ChangeNotifier {
  String dummy = 'sagfjhsd';
  implementProvider(dummy) {
    this.dummy = dummy;
    notifyListeners();
  }
}
