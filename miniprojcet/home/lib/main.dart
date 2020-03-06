import 'package:flutter/material.dart';
import 'package:home/fooditems.dart';
import 'package:home/homescreen.dart';
import 'package:home/login.dart';
import 'package:home/splashScreen.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splashscreen(),
      routes: {'/login': (context) => Login()},
    ));
