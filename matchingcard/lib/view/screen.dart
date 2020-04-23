import 'dart:async';

import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:matchingcard/view/newsscreen.dart';

class Screen extends StatefulWidget {
  final int size;

  const Screen({Key key, this.size = 8}) : super(key: key);
  @override
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  List<GlobalKey<FlipCardState>> cardstatekey = [
    GlobalKey<FlipCardState>(),
    GlobalKey<FlipCardState>(),
    GlobalKey<FlipCardState>(),
    GlobalKey<FlipCardState>(),
    GlobalKey<FlipCardState>(),
    GlobalKey<FlipCardState>(),
    GlobalKey<FlipCardState>(),
    GlobalKey<FlipCardState>()
  ];
  List<bool> cardflips = [true, true, true, true, true, true, true, true];
  int previousIndex = 0;
  bool flip = false;
  int score = 0;
  List<String> dataItems = [
    "assets/ace.png",
    "assets/king.png",
    "assets/queen.jpg",
    "assets/jack.jpeg",
    "assets/ace.png",
    "assets/king.png",
    "assets/queen.jpg",
    "assets/jack.jpeg",
  ];
  void increament() {
    setState(() {});
  }

  @override
  void initState() {
    super.initState();

    dataItems.shuffle();
  }

  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("Match the Card"),
        backgroundColor: Colors.red,
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 130.0),
              child: Text(
                "You score $score/40",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(4),
              child: Text(
                "Lets Start",
                style: TextStyle(fontSize: 12),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30.0, left: 40, right: 40),
              child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4),
                itemCount: 8,
                itemBuilder: (context, int index) => FlipCard(
                  key: cardstatekey[index],
                  onFlip: () {
                    if (!flip) {
                      flip = true;
                      previousIndex = index;
                    } else {
                      flip = false;
                      if (previousIndex != index) {
                        if (dataItems[previousIndex] != dataItems[index]) {
                          cardstatekey[previousIndex].currentState.toggleCard();
                          previousIndex = index;
                        } else {
                          cardflips[previousIndex] = false;
                          cardflips[index] = false;
                          setState(() {
                            score += 10;
                          });

                          if (cardflips.every((t) => t == false)) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NewScreen()),
                            );
                            print("you won");
                          }
                          print("matched");
                        }
                      }
                    }
                  },
                  direction: FlipDirection.HORIZONTAL,
                  front: Container(
                    child: Image.asset(
                      'assets/ques.jpg',
                      height: 100,
                      fit: BoxFit.fill,
                    ),
                    margin: EdgeInsets.all(5.0),
                    color: Colors.deepOrange.withOpacity(0.3),
                  ),
                  back: Container(
                    child: Image.asset(
                      dataItems[index],
                      fit: BoxFit.contain,
                      // height: 300,
                    ),
                    margin: EdgeInsets.all(5.0),
                    // color: Colors.deepOrange.withOpacity(0.3),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
