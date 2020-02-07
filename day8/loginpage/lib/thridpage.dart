import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Third Page')),
      body: SafeArea(
        child: Container(
          color: Colors.blueGrey,
        ),
      ),
    );
  }
}
