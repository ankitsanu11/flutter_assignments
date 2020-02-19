import 'dart:async';

import 'package:flutter/material.dart';

class Splashscreen extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splashscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacementNamed(context, '/login');
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              color: Colors.lightGreen,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                          backgroundColor: Colors.red,
                          radius: 80.0,
                          child: Icon(
                            Icons.card_travel,
                            size: 30,
                          )),
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                      ),
                      Text('Traveling App',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.bold))
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                    child: Column(
                  children: <Widget>[
                    CircularProgressIndicator(),
                    Padding(padding: EdgeInsets.only(top: 20)),
                    Text(
                      ' Trip Booking',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                      ),
                    )
                  ],
                )),
              ),
            ],
          )
        ],
      ),
    );
  }
}
