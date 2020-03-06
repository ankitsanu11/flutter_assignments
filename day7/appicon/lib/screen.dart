import 'package:flutter/material.dart';
import 'dart:math';

class Screen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Screen_State();
  }
}

class Screen_State extends State<Screen> {
  int tv_icon = 0;
  int home_icon = 0;
  int arrow_icon = 0;
  int bookmark_icon = 0;
  int bluetooth_icon = 0;
  int book_icon = 0;
  int computer_icon = 0;
  int battery_icon = 0;
  int menu_icon = 0;
  int radio_icon = 0;

  List<Color> random_colors = [
    Colors.greenAccent,
    Colors.redAccent,
    Colors.blueAccent,
    Colors.blueGrey,
    Colors.yellow,
    Colors.orange,
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 4,
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: GestureDetector(
                                  onTap: () {
                                    setState(
                                      () {
                                        home_icon = Random()
                                            .nextInt(random_colors.length);
                                      },
                                    );
                                  },
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: random_colors[home_icon],
                                      borderRadius: BorderRadius.circular(2),
                                    ),
                                    child: Icon(Icons.home),
                                    width: 700,
                                    margin: EdgeInsets.only(bottom: 5),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  child: Column(
                                    children: <Widget>[
                                      Expanded(
                                        flex: 1,
                                        child: GestureDetector(
                                          onTap: () {
                                            setState(() {
                                              arrow_icon = Random().nextInt(
                                                  random_colors.length);
                                            });
                                          },
                                          child: (Container(
                                            margin: EdgeInsets.only(top: 5),
                                            color: random_colors[arrow_icon],
                                            child: Icon(
                                              Icons.arrow_right,
                                              size: 50,
                                            ),
                                            width: 500,
                                          )),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Column(
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: GestureDetector(
                                  onTap: () {
                                    setState(
                                      () {
                                        bookmark_icon = Random()
                                            .nextInt(random_colors.length);
                                      },
                                    );
                                  },
                                  child: Container(
                                    color: random_colors[bookmark_icon],
                                    margin: EdgeInsets.only(bottom: 5),
                                    child: Icon(Icons.bookmark),
                                    width: 500,
                                    height: 600,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 3,
                                child: Container(
                                  margin: EdgeInsets.only(top: 5),
                                  child: Row(
                                    children: <Widget>[
                                      Expanded(
                                        flex: 1,
                                        child: Container(
                                          child: Column(
                                            children: <Widget>[
                                              Expanded(
                                                  flex: 3,
                                                  child: GestureDetector(
                                                    onTap: () {
                                                      setState(() {
                                                        tv_icon = Random()
                                                            .nextInt(
                                                                random_colors
                                                                    .length);
                                                      });
                                                    },
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                          color: random_colors[
                                                              tv_icon]),
                                                      margin: EdgeInsets.only(
                                                          bottom: 5),
                                                      child: Icon(Icons.tv),
                                                      width: 500,
                                                      height: 500,
                                                    ),
                                                  )),
                                              Expanded(
                                                flex: 1,
                                                child: GestureDetector(
                                                  onTap: () {
                                                    setState(
                                                      () {
                                                        bluetooth_icon =
                                                            Random().nextInt(
                                                                random_colors
                                                                    .length);
                                                      },
                                                    );
                                                  },
                                                  child: Container(
                                                    color: random_colors[
                                                        bluetooth_icon],
                                                    margin:
                                                        EdgeInsets.only(top: 5),
                                                    child:
                                                        Icon(Icons.bluetooth),
                                                    width: 500,
                                                    height: 500,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                          margin: EdgeInsets.only(right: 5),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Container(
                                          margin: EdgeInsets.only(left: 5),
                                          child: Column(
                                            children: <Widget>[
                                              Expanded(
                                                flex: 1,
                                                child: GestureDetector(
                                                  onTap: () {
                                                    setState(
                                                      () {
                                                        book_icon = Random()
                                                            .nextInt(
                                                                random_colors
                                                                    .length);
                                                      },
                                                    );
                                                  },
                                                  child: Container(
                                                    color: random_colors[
                                                        book_icon],
                                                    margin: EdgeInsets.only(
                                                        bottom: 5),
                                                    child: Icon(Icons.book),
                                                    width: 500,
                                                    height: 500,
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                  flex: 3,
                                                  child: GestureDetector(
                                                    onTap: () {
                                                      setState(
                                                        () {
                                                          menu_icon = Random()
                                                              .nextInt(
                                                                  random_colors
                                                                      .length);
                                                        },
                                                      );
                                                    },
                                                    child: Container(
                                                      color: random_colors[
                                                          menu_icon],
                                                      margin: EdgeInsets.only(
                                                          top: 5),
                                                      child: Icon(Icons.menu),
                                                      width: 500,
                                                      height: 500,
                                                    ),
                                                  )),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
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
                  margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: GestureDetector(
                          onTap: () {
                            setState(
                              () {
                                battery_icon =
                                    Random().nextInt(random_colors.length);
                              },
                            );
                          },
                          child: Container(
                            color: random_colors[battery_icon],
                            margin: EdgeInsets.only(right: 5),
                            child: Icon(Icons.battery_alert),
                            width: 500,
                            height: 500,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              computer_icon =
                                  Random().nextInt(random_colors.length);
                            });
                          },
                          child: Container(
                            color: random_colors[computer_icon],
                            margin: EdgeInsets.only(left: 5),
                            child: Icon(Icons.computer),
                            width: 500,
                            height: 500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      radio_icon = Random().nextInt(random_colors.length);
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    color: random_colors[radio_icon],
                    child: Icon(Icons.radio),
                    width: 500,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
