import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:matchingcard/view/screen.dart';

class NewScreen extends StatefulWidget {
  @override
  _NewScreenState createState() => _NewScreenState();
}

class _NewScreenState extends State<NewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Matching Card"),
      ),
      body: Center(
        child: RaisedButton(
            color: Colors.blue,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Screen()),
              );
            },
            child: Text('Replay',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold))),
      ),
    );
  }
}
