import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:home/fooditems.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  final List<Widget> _children = [];
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 300.0,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('assets/images/home.jpg'),
          AssetImage('assets/images/apples.jpg'),
          AssetImage('assets/images/dry_fruits.jpg'),
          AssetImage('assets/images/foodgrains&oil.png'),
        ],
        autoplay: true,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
      ),
    );
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
              Icons.subscriptions,
              color: Colors.black,
            ),
            title: Text(
              'Subscription',
              style: TextStyle(color: Colors.black),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart, color: Colors.black),
            title: Text(
              'Cart',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
      appBar: new AppBar(
        backgroundColor: Colors.green,
        title: Text('Step2door'),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: Text('Kumar Ankit'),
              accountEmail: Text('ankitk@geekyants.com'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.white,
                ),
              ),
              decoration: new BoxDecoration(color: Colors.green),
            ),
            ListTile(
              title: Text('My Account'),
              leading: Icon(
                Icons.person,
                color: Colors.blue,
              ),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              title: Text('My Order'),
              leading: Icon(
                Icons.shopping_basket,
                color: Colors.green,
              ),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              title: Text('My Subscription'),
              leading: Icon(
                Icons.branding_watermark,
                color: Colors.red,
              ),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              title: Text('Settings'),
              leading: Icon(Icons.settings),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              title: Text('About Us'),
              leading: Icon(
                Icons.help,
                color: Colors.blue,
              ),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              title: Text('Contact Us'),
              leading: Icon(
                Icons.contacts,
                color: Colors.orange,
              ),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              title: Text('Logout'),
              leading: Icon(
                Icons.close,
                color: Colors.red,
              ),
              onTap: () {},
            ),
            Divider(),
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          image_carousel,
          Container(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Shop By Category',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            constraints: BoxConstraints.expand(height: 250),
            alignment: Alignment.center,
            child: GestureDetector(
              child: Image.asset(
                "assets/images/FoodgrainsOilMasala.jpg",
                fit: BoxFit.contain,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Foodgrains()),
                );
              },
            ),
          ),
          Container(
            alignment: Alignment.topCenter,
            child: FlatButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Foodgrains()),
                );
              },
              child: Text(
                'Food Grains,oil & Masala',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
              constraints: BoxConstraints.expand(height: 300),
              alignment: Alignment.center,
              child: GestureDetector(
                child: Image.asset(
                  "assets/images/milk&bakery.jpg",
                  fit: BoxFit.contain,
                ),
                onTap: () {},
              )),
          Container(
            alignment: Alignment.topCenter,
            child: FlatButton(
              onPressed: () {},
              child: Text(
                'Milk & Bread',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            constraints: BoxConstraints.expand(height: 250),
            alignment: Alignment.center,
            child: GestureDetector(
              child: Image.asset(
                "assets/images/fruit_and_vegetable.jpg",
                fit: BoxFit.contain,
              ),
              onTap: () {
                print('inside on tap of image');
                setState(() {});
              },
            ),
          ),
          Container(
            alignment: Alignment.topCenter,
            child: FlatButton(
              onPressed: () {},
              child: Text(
                'Fruits & Vegitables',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
