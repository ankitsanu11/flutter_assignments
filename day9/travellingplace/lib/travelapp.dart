import 'package:flutter/material.dart';

class Travelapp extends StatefulWidget{
  @override
  _TravelappState createState() => _TravelappState();
}

class _TravelappState extends State<Travelapp> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(home: new Login,
        );
      }
    }
    
    class Login extends State<Travelapp>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(appBar: AppBar(title:Text('India Trip',
    ),
    ),
    );
  }
}