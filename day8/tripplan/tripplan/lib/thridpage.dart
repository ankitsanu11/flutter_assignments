// import 'dart:html';

import 'package:flutter/material.dart';

class Travelapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp();
  }
}

class ThirdPage extends StatefulWidget {
  @override
  ThirdPageState createState() => ThirdPageState();
}

class ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trip Location'),
        backgroundColor: Colors.red,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Image.asset('assets/images/icon.jpg'),
            ),
            ListTile(
              title: Text('Kolkata'),
              onTap: () {
                setState(() {});
              },
            ),
            ListTile(
              title: Text('New Delhi'),
              onTap: () {
                setState(
                  () {},
                );
              },
            ),
            ListTile(
              title: Text('Mumbai'),
              onTap: () {
                setState(() {
                  ;
                });
              },
            ),
            ListTile(
              title: Text('Mysore'),
              onTap: () {
                setState(
                  () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ThirdPage()),
                    );
                  },
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
