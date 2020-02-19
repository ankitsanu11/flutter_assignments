import 'package:flutter/material.dart';
import 'package:loginpage/login.dart';
import 'package:loginpage/signup.dart';
import 'package:loginpage/blog.dart';
import 'package:loginpage/splashscreen.dart';
import 'package:loginpage/swipeScreen.dart';
import 'package:loginpage/quiz.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: Splashscreen(),
      routes: {'/login': (context) => LoginPage()},
    );
  }
}
