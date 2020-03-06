import 'package:datainsertion/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:datainsertion/datahelper.dart';

class EnterText extends StatefulWidget {
  @override
  _EnterTextState createState() => _EnterTextState();
}

class _EnterTextState extends State<EnterText> {
  TextEditingController name = TextEditingController();
  DatabaseHelper databaseHelper = DatabaseHelper();
  @override
  void init() {
    databaseHelper.getNodeMapList();
  }

  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Name Enter'),
      ),
      body: Container(
        child: TextField(
          controller: name,
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Enter Name',
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            setState(() {
              databaseHelper.insertNode(Todo(itemName: '$name'));
            });
          }),
    );
  }
}
