import 'dart:math';

import 'package:flutter/material.dart';

class Guessergame extends StatefulWidget {
  @override
  _GuessergameState createState() => _GuessergameState();
}

class _GuessergameState extends State<Guessergame> {
  int numberOfTries = 3;
  var randomNumber = ran.nextInt(30) + 1,
      randomNumber1 = ran.nextInt(30) + 1,
      randomNumber2 = ran.nextInt(30) + 1,
      randomNumber3 = ran.nextInt(30) + 1,
      randomNumber4 = ran.nextInt(30) + 1,
      randomNumber5 = ran.nextInt(30) + 1,
      randomNumber6 = ran.nextInt(30) + 1,
      randomNumber7 = ran.nextInt(30) + 1,
      randomNumber8 = ran.nextInt(30) + 1;
  int numberOfTimes = 0;
  int guessedNumber = 23;
  int counter = 0;

  static Random ran = Random();

  void random() {
    setState(() {
      randomNumber = ran.nextInt(30) + 1;
      randomNumber1 = ran.nextInt(30) + 1;
      randomNumber2 = ran.nextInt(30) + 1;
      randomNumber3 = ran.nextInt(30) + 1;
      randomNumber4 = ran.nextInt(30) + 1;
      randomNumber5 = ran.nextInt(30) + 1;
      randomNumber6 = ran.nextInt(30) + 1;
      randomNumber7 = ran.nextInt(30) + 1;
      randomNumber8 = ran.nextInt(30) + 1;
    });
  }

  // void onpress() {
  //   random();
  //   if()
  // }
  void show_dialog() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Container(
              child: Text("you won the game"),
            ),
          );
        });
  }

  // }

  void show_dialog1() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Container(
              child: Text("Game Over"),
            ),
          );
        });
  }

  void show_dialog2() {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            content: Container(
              child: Text("you have to chance left :$numberOfTries"),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    // void show_dialog() {
    //   showDialog(
    //       context: context,
    //       builder: (context) {
    //         return AlertDialog(
    //           content: Container(
    //             child: Text("you won"),
    //           ),
    //         );
    //       });
    // }

    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: Text("Guesser Game"),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {
                        if (guessedNumber == randomNumber) {
                          show_dialog();
                        } else {
                          numberOfTries--;
                          if (numberOfTries == numberOfTimes &&
                              guessedNumber != randomNumber) {
                            show_dialog1();
                            numberOfTimes = 0;
                          }

                          if (guessedNumber != randomNumber) {
                            show_dialog2();
                          }
                        }
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.red,
                          border: Border.all(
                            color: Colors.black,
                            width: 2.5,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "$randomNumber",
                            style: TextStyle(
                                fontSize: 60,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {
                        if (guessedNumber == randomNumber1) {
                          show_dialog();
                        } else {
                          numberOfTries--;
                          if (numberOfTries == numberOfTimes &&
                              guessedNumber != randomNumber1) {
                            show_dialog1();
                            numberOfTimes = 0;
                          }

                          if (guessedNumber != randomNumber1) {
                            show_dialog2();
                            //numberOfTimes = 0;
                          }
                        }
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.red,
                          border: Border.all(
                            color: Colors.black,
                            width: 2.5,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "$randomNumber1",
                            style: TextStyle(
                                fontSize: 60,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {
                        if (guessedNumber == randomNumber2) {
                          show_dialog();
                        } else {
                          numberOfTries--;
                          if (numberOfTries == numberOfTimes &&
                              guessedNumber != randomNumber2) {
                            show_dialog1();
                            numberOfTimes = 0;
                          }

                          if (guessedNumber != randomNumber2) {
                            show_dialog2();
                            //numberOfTimes = 0;
                          }
                        }
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.red,
                          border: Border.all(
                            color: Colors.black,
                            width: 2.5,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "$randomNumber2",
                            style: TextStyle(
                                fontSize: 60,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {
                        if (guessedNumber == randomNumber3) {
                          show_dialog();
                        } else {
                          numberOfTries--;
                          if (numberOfTries == numberOfTimes &&
                              guessedNumber != randomNumber3) {
                            show_dialog1();
                            numberOfTimes = 0;
                          }
                          if (guessedNumber != randomNumber3) {
                            show_dialog2();
                          }
                        }
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.red,
                          border: Border.all(
                            color: Colors.black,
                            width: 2.5,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "$randomNumber3",
                            style: TextStyle(
                                fontSize: 60,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {
                        if (guessedNumber == randomNumber4) {
                          show_dialog();
                        } else {
                          numberOfTries--;
                          if (numberOfTries == numberOfTimes &&
                              guessedNumber != randomNumber4) {
                            show_dialog1();
                            numberOfTimes = 0;
                          }
                          if (guessedNumber != randomNumber3) {
                            show_dialog2();
                          }
                        }
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.red,
                          border: Border.all(
                            color: Colors.black,
                            width: 2.5,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "$randomNumber4",
                            style: TextStyle(
                                fontSize: 60,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {
                        if (guessedNumber == randomNumber5) {
                          show_dialog();
                        } else {
                          numberOfTries--;
                          if (numberOfTries == numberOfTimes &&
                              guessedNumber != randomNumber5) {
                            show_dialog1();
                            numberOfTimes = 0;
                          }
                          if (guessedNumber != randomNumber3) {
                            show_dialog2();
                          }
                        }
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.red,
                          border: Border.all(
                            color: Colors.black,
                            width: 2.5,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "$randomNumber5",
                            style: TextStyle(
                                fontSize: 60,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {
                        if (guessedNumber == randomNumber6) {
                          show_dialog();
                        } else {
                          numberOfTries--;
                          if (numberOfTries == numberOfTimes &&
                              guessedNumber != randomNumber6) {
                            show_dialog1();
                            numberOfTimes = 0;
                          }
                          if (guessedNumber != randomNumber3) {
                            show_dialog2();
                          }
                        }
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.red,
                          border: Border.all(
                            color: Colors.black,
                            width: 2.5,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "$randomNumber6",
                            style: TextStyle(
                                fontSize: 60,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {
                        if (guessedNumber == randomNumber7) {
                          show_dialog();
                        } else {
                          numberOfTries--;
                          if (numberOfTries == numberOfTimes &&
                              guessedNumber != randomNumber7) {
                            show_dialog1();
                            numberOfTimes = 0;
                          }
                          if (guessedNumber != randomNumber3) {
                            show_dialog2();
                          }
                        }
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.red,
                          border: Border.all(
                            color: Colors.black,
                            width: 2.5,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "$randomNumber7",
                            style: TextStyle(
                                fontSize: 60,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {
                        if (guessedNumber == randomNumber8) {
                          show_dialog();
                        } else {
                          numberOfTries--;
                          if (numberOfTries == numberOfTimes &&
                              guessedNumber != randomNumber8) {
                            show_dialog1();
                            numberOfTimes = 0;
                          }
                          if (guessedNumber != randomNumber3) {
                            show_dialog2();
                          }
                        }
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.red,
                          border: Border.all(
                            color: Colors.black,
                            width: 2.5,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            "$randomNumber8",
                            style: TextStyle(
                                fontSize: 60,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: FloatingActionButton(
                onPressed: () {
                  random();
                  print("object");
                },
                child: Icon(
                  Icons.refresh,
                  size: 40,
                ),
                backgroundColor: Colors.brown,
              ),
            ),
          )
        ],
      ),
    );
  }
}
