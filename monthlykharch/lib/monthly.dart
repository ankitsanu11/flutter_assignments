import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:monthlykharch/paymentpage.dart';

class Home extends StatelessWidget {
  @override
  State<StatefulWidget> createState() {
// TODO: implement createState
    throw UnimplementedError();
  }

  @override
  Widget build(BuildContext context) {
// TODO: implement build
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(
          child: Stack(
            children: <Widget>[
              Container(
                child: Column(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Container(
                          child: Column(
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: Container(
                              child: Row(
                                children: <Widget>[
                                  Expanded(
                                    flex: 2,
                                    child: Container(
                                      color: Colors.orange[300],
                                    ),
                                  ),
                                  Expanded(
                                    flex: 1,
                                    child: ClipPath(
                                      child: Container(
                                        height: 200,
                                        color: Colors.orange[300],
                                      ),
                                      clipper: CustomClip1(),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: Container(),
                          ),
                        ],
                      )),
                    ),
                    Expanded(
                      flex: 2,
                      child: Container(),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
            child: Stack(
          children: <Widget>[
            Container(
                child: Column(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Stack(
                    children: <Widget>[
                      Container(
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              flex: 2,
                              child: ClipPath(
                                child: Container(
                                  child: Stack(
                                    children: <Widget>[
                                      Positioned(
                                        bottom: 150,
                                        left: 10,
                                        right: 10,
                                        child: Center(
                                            child: Text("Mahine Ka Kharcha",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.bold))),
                                      ),
                                      Positioned(
                                        right: 10,
                                        left: 10,
                                        top: 180,
                                        child: Center(
                                            child: Text("Total bill due",
                                                style: TextStyle(
                                                    color: Colors.red,
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.bold))),
                                      ),
                                      Positioned(
                                        top: 200,
                                        left: 10,
                                        right: 10,
                                        child: Center(
                                            child: Text("9240.00",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12,
                                                ))),
                                      )
                                    ],
                                  ),
                                  height: 500,
                                  color: Colors.black,
                                ),
                                clipper: CustomClipPath(),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                margin: EdgeInsets.only(bottom: 30),
                                child: CircleAvatar(
                                  backgroundColor: Colors.black,
                                  child: Icon(Icons.payment),
                                ),
                                color: Colors.transparent,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.grey[500]),
                            margin: EdgeInsets.symmetric(
                                horizontal: 30, vertical: 10),
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    child: Column(
                                      children: <Widget>[
                                        Expanded(
                                          flex: 2,
                                          child: Container(
                                            child: Row(
                                              children: <Widget>[
                                                Expanded(
                                                  flex: 1,
                                                  child: Container(
                                                    padding: EdgeInsets.all(10),
                                                    child: Image.asset(
                                                        'assets/bill.jpg'),
                                                  ),
                                                ),
                                                Expanded(
                                                  flex: 3,
                                                  child: Container(
                                                    padding:
                                                        EdgeInsets.fromLTRB(
                                                            0, 0, 40, 20),
                                                    child: Text(
                                                      "Electrocity Bill",
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.bold),
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
                                            padding:
                                                EdgeInsets.fromLTRB(5, 0, 0, 0),
                                            child: Text(
                                              "Last date of Payment is 22 April",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold),
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
                                    margin: EdgeInsets.only(right: 5),
                                    child: Column(
                                      children: <Widget>[
                                        Expanded(
                                          flex: 1,
                                          child: Container(
                                            margin: EdgeInsets.all(15),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                color: Colors.white),
                                            child: FlatButton(
                                                onPressed: () {},
                                                child: Text(
                                                  "Pay Now",
                                                  style: TextStyle(
                                                      fontSize: 11,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Container(
                                              margin: EdgeInsets.only(top: 15),
                                              child: Text(
                                                "1240.00",
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )),
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
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.grey[500]),
                            margin: EdgeInsets.symmetric(
                                horizontal: 30, vertical: 10),
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    child: Column(
                                      children: <Widget>[
                                        Expanded(
                                          flex: 2,
                                          child: Container(
                                            child: Row(
                                              children: <Widget>[
                                                Expanded(
                                                  flex: 1,
                                                  child: Container(
                                                    padding: EdgeInsets.all(10),
                                                    child: Image.asset(
                                                        'assets/money2.png'),
                                                  ),
                                                ),
                                                Expanded(
                                                  flex: 3,
                                                  child: Container(
                                                    padding:
                                                        EdgeInsets.fromLTRB(
                                                            0, 0, 40, 20),
                                                    child: Text(
                                                      "Servant Payment",
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          fontWeight:
                                                              FontWeight.bold),
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
                                            padding: EdgeInsets.fromLTRB(
                                                0, 0, 120, 0),
                                            child: Text(
                                              "No Auto Pay",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold),
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
                                    margin: EdgeInsets.only(right: 5),
                                    child: Column(
                                      children: <Widget>[
                                        Expanded(
                                          flex: 1,
                                          child: Container(
                                            margin: EdgeInsets.all(15),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                color: Colors.white),
                                            child: FlatButton(
                                                onPressed: () {},
                                                child: Text(
                                                  "Pay Now",
                                                  style: TextStyle(
                                                      fontSize: 11,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Container(
                                              margin: EdgeInsets.only(top: 15),
                                              child: Text(
                                                "6000.00",
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.grey[500]),
                            margin: EdgeInsets.symmetric(
                                horizontal: 30, vertical: 10),
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                      child: Column(
                                    children: <Widget>[
                                      Expanded(
                                        flex: 1,
                                        child: Container(
                                          child: Row(
                                            children: <Widget>[
                                              Expanded(
                                                flex: 1,
                                                child: Container(
                                                  padding: EdgeInsets.all(10),
                                                  child: Image.asset(
                                                      'assets/mobile.jpeg'),
                                                ),
                                              ),
                                              Expanded(
                                                flex: 3,
                                                child: Container(
                                                  child: Text(
                                                    "Mobile Bill",
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Container(),
                                      )
                                    ],
                                  )),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    margin: EdgeInsets.only(right: 5),
                                    child: Column(
                                      children: <Widget>[
                                        Expanded(
                                          flex: 1,
                                          child: Container(
                                            margin: EdgeInsets.all(15),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                                color: Colors.white),
                                            child: FlatButton(
                                                onPressed: () {},
                                                child: Text(
                                                  "Pay Now",
                                                  style: TextStyle(
                                                      fontSize: 11,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Container(
                                              margin: EdgeInsets.only(top: 15),
                                              child: Text(
                                                "2000.00",
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              )),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Colors.red,
                            ),
                            margin: EdgeInsets.symmetric(vertical: 40),
                            child: FlatButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Paymentpage()),
                                );
                              },
                              child: Text("             Clear Bill          "),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )),
          ],
        )),
      ],
    ));
  }
}

class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 100);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 100);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class CustomClip1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    path.quadraticBezierTo(
        size.width / 2, size.height - 100, size.width, size.height);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

class CustomRect extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    Rect rect = Rect.fromLTRB(0.0, 0.0, size.width, size.height);
    return rect;

    // TODO: implement getClip
  }

  @override
  bool shouldReclip(CustomRect oldClipper) {
    // TODO: implement shouldReclip
  }
}
