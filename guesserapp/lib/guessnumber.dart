import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Guessnumber extends StatefulWidget {
  @override
  _GuessnumberState createState() => _GuessnumberState();
}

class _GuessnumberState extends State<Guessnumber> {
  static Random ran = Random();
  int numberOfTries = 3;
  int numberOfTimes = 0;
  int randomNumber;
  int guessedNumber = 23;

  random() {
    setState(() {
      randomNumber = ran.nextInt(30) + 1;
    });

    //   return Text(
    //     "$randomNumber",
    //     style: TextStyle(
    //         fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white),
    //   );
  }

  number() {
    randomNumber = ran.nextInt(30) + 1;
    return randomNumber;
  }

  void show_dialog(text, name) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Container(
              child: Text(text),
            ),
          );
        });
  }

  String name(String text) => text;
  void ontap() {
    //print();
    if (guessedNumber == randomNumber) {
      print('hello');
      show_dialog("you won", name);
    } else {
      print('random');
      numberOfTries--;
      if (numberOfTries == numberOfTimes && guessedNumber != randomNumber) {
        show_dialog("Game Over", name);
      } else if (guessedNumber != randomNumber) {
        show_dialog("you have to chance left :$numberOfTries", name);
      } else {
        print("ojy");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: Text("Guessing Number"),
        backgroundColor: Colors.red,
      ),
      body: Container(
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 4,
              mainAxisSpacing: 6,
              childAspectRatio: .7),
          itemCount: 9,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                ontap();
                // print("object");
              },
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.red,
                  border: Border.all(
                    color: Colors.black,
                  ),
                ),
                child: Center(
                  child: Text(number()),
                ),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            random();
            print("object");
          });
        },
        child: Icon(
          Icons.refresh,
          size: 40,
        ),
        backgroundColor: Colors.brown,
      ),
    );
  }
}
